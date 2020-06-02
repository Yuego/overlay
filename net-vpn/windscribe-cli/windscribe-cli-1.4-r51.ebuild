# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit unpacker

DESCRIPTION="Windscribe CLI tool for Linux"
HOMEPAGE="https://windscribe.com"
BASE_URI="https://repo.windscribe.com/ubuntu/pool/main/w/${PN}"
SRC_URI="
	amd64? ( "${BASE_URI}/${PN}_${PVR/-r/-}_amd64.deb" )
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="systemd"
RESTRICT="mirror strip"

RDEPEND="
	>=net-vpn/openvpn-2.4.7
	>=dev-libs/pkcs11-helper-1.25.1

	net-misc/stunnel

	systemd? (
		sys-apps/systemd
	)
"

S="${WORKDIR}"

src_unpack() {
	unpack_deb ${A}
}

src_prepare() {
	mv usr/share/doc/${PN}/changelog.Debian.gz .
	gunzip changelog.Debian.gz
	rm -rf usr/share/man \
		usr/share/doc \
		etc/init.d
	default
}

src_install() {
	dodoc changelog.Debian
	rm changelog.Debian
	mkdir -p "${ED}"
	cp -r . "${ED}"/
	doinitd "${FILESDIR}/${PN}"
}

pkg_postinst() {
	echo
	elog "Thanks for installing the Windscribe client."
	elog "Don't forget to purchase your Windscribe plan in order to use the client."
	echo
}
