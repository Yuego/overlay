# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

inherit eutils git-r3

EGIT_REPO_URI="https://github.com/flygoast/opentracker.git"

DESCRIPTION="High-performance bittorrent tracker"
HOMEPAGE="https://github.com/flygoast/opentracker http://erdgeist.org/arts/software/opentracker/"
LICENSE="BEER-WARE"
SLOT="0"
KEYWORDS="~amd64 ~x86"

declare -A FLAGS
FLAGS=( [blacklist]="DWANT_ACCESSLIST_BLACK"
	[gzip]="DWANT_COMPRESSION_GZIP$"
	[gzip_always]="DWANT_COMPRESSION_GZIP_ALWAYS"
	[ip_from_query]="DWANT_IP_FROM_QUERY_STRING"
	[ip_from_proxy]="DWANT_IP_FROM_PROXY"
	[ipv6]="DWANT_V6"
	[fullscrapes]="DWANT_FULLSCRAPE"
	[fullscrapes_modest]="DWANT_MODEST_FULLSCRAPES"
	[live_sync]="DWANT_SYNC_LIVE"
	[live_sync_unicast]="DSYNC_LIVE_UNICAST"
	[log_networks_full]="DWANT_FULLLOG_NETWORKS"
	[log_numwant]="DWANT_LOG_NUMWANT"
	[persistence]="DWANT_PERSISTENCE"
	[spot_woodpeckers]="DWANT_SPOT_WOODPECKER"
	[syslog]="DWANT_SYSLOG"
	[restrict_stats]="DWANT_RESTRICT_STATS"
	[whitelist]="DWANT_ACCESSLIST_WHITE"
)

IUSE="blacklist debug examples +gzip gzip_always ip_from_query ip_from_proxy ipv6 +fullscrapes fullscrapes_modest live_sync live_sync_unicast log_networks_full log_numwant persistence restrict_stats spot_woodpeckers syslog whitelist"

RDEPEND=">=dev-libs/libowfat-0.27
	gzip? ( sys-libs/zlib )"

REQUIRED_USE="blacklist? ( !whitelist )
	gzip_always? ( gzip )
	gzip? ( fullscrapes )
	live_sync_unicast? ( live_sync )
	persistence? ( !ipv6 )
"

pkg_setup() {
	# Add opentracker group and user to system
	# (no home directory specified, because otherwise it will be result in opentracker:root ownership on it)
	enewgroup ${PN}
	enewuser ${PN} -1 -1 -1 ${PN}
}

src_prepare() {
	# Fix use of FEATURES, so it's not mixed up with portage's FEATURES, and comment all of them
	# Define PREFIX, BINDIR and path to libowfat; remove lpthread, lz and O3 flag, owfat target, stripping; create dirs on install
	sed -i \
		-e "s|FEATURES|FEATURES_INTERNAL|g" \
		-e "s|^FEATURES_INTERNAL|#FEATURES_INTERNAL|g" \
		-e "s|PREFIX?=..|PREFIX?=/usr|g" \
		-e "s|LIBOWFAT_HEADERS=libowfat|LIBOWFAT_HEADERS=\$(PREFIX)/include/libowfat|g" \
		-e "s|-lpthread||g" \
		-e "s|-O3||g" \
		-e "s|-lz||g" \
		-e "s|strip \$@||g" \
		-e "s|BINDIR?=\$(PREFIX)/bin|BINDIR?=\$(DESTDIR)\$(PREFIX)/bin/|g" \
		-e "s|all: owfat|all:|g" \
		-e "s|install -m 755 ${PN} \$(BINDIR)|install -D -m 755 ${PN} \$(BINDIR)/${PN}|g" \
		Makefile || die "sed for src_prepare failed"

	# Define which features to use
	for flag in ${!FLAGS[@]} ; do
		sed -i "$(usex $flag /${FLAGS[$flag]}/s/^#*// '')" Makefile || die "sed for $flag failed"
	done

	# Return back -lz flag for gzip
	sed -i "$(usex gzip /LDFLAGS+/s/$/-lz/ '')" Makefile || die "sed for lz in LDFLAGS failed"

	# Debug build: build opentracker.debug but target as opentracker, and don't build opentracker
	if use debug; then
		sed -i \
			-e '/D_DEBUG_HTTPERROR/s|^#*||g' \
			-e 's|all: $(BINARY)|all:|g' \
			-e 's|$@ $(OBJECTS_debug)|opentracker $(OBJECTS_debug)|g' \
		Makefile || die "sed for debug object failed"
	fi

	# Correct config paths
	sed -i \
		-e "/access.whitelist/s|/path/to/whitelist|/var/lib/${PN}/access.whitelist|g" \
		-e "/access.blacklist/s|./blacklist|/var/lib/${PN}/access.blacklist|g" \
		-e "/tracker.rootdir/s|/usr/local/etc/opentracker|/var/lib/${PN}|g" \
		-e "/tracker.user/s|nobody|${PN}|g" \
		-e "/persist.file/s|/path/to/persist.odb|/var/lib/${PN}/${PN}.odb|g" \
	"${S}"/opentracker.conf.sample || die "sed for config failed"
}

src_install() {
	# Install and copy documentation
	default

	# Keeping chroot directory
	diropts -m 755 -o ${PN} -g ${PN}
	keepdir /var/lib/${PN}

	# Install Gentoo init script and its config
	newinitd "${FILESDIR}"/${PN}.init.d ${PN}
	newconfd "${FILESDIR}"/${PN}.conf.d ${PN}

	# Install manual page
	doman "${FILESDIR}"/${PN}.8

	# Install config
	insinto /etc/${PN}
	newins "${S}"/${PN}.conf.sample ${PN}.conf

	if use examples ; then
		# Install files into specified directory
		insinto /usr/share/${PN}
		doins -r "${S}"/tests/*.sh
		doins "${S}"/sync_daemon.pl

		use persistence && doins "${S}"/ODB_FORMAT.md
	fi

	# Correct user, group and permissions for files and directories
	fowners -R ${PN}:${PN} /etc/${PN}
	fperms 0640 /etc/${PN}/${PN}.conf
}
