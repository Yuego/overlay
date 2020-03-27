# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 user

MY_PN="MTProxy"

DESCRIPTION="Simple MT-Proto proxy"
HOMEPAGE="https://github.com/TelegramMessenger/MTProxy"
EGIT_REPO_URI="https://github.com/TelegramMessenger/${MY_PN}.git"

MY_PV="dc0c7f3de40530053189c572936ae4fd1567269b"
MY_PN="mtproxy"

if [[ ${PV} == 9999 ]]; then
	KEYWORDS=""
else
	EGIT_COMMIT="${MY_PV}"
	KEYWORDS="amd64 ~x86"
	S="${WORKDIR}/${MY_PN}-${PV}"
fi

LICENSE="GPL-2"
SLOT="0"

DEPEND="dev-libs/openssl"
RDEPEND="${DEPEND}"

pkg_setup() {
	enewgroup mtproxy
	enewuser mtproxy -1 -1 -1 mtproxy
}

src_prepare() {
	sed -i \
		-e 's/CFLAGS[[:space:]]*=/CFLAGS +=/' \
		-e 's/LDFLAGS[[:space:]]*=/LDFLAGS +=/' \
		-e 's/-O[^[:space:]]*//' \
		-e 's/###-march[^[:space:]]*//' \
		-e 's/-ggdb//' \
		Makefile || die

	default
}

src_install() {
	dobin "objs/bin/mtproto-proxy"
	dobin "${FILESDIR}/mtproxy.sh"

	insinto /etc
	doins "${FILESDIR}/mtproxy.conf"

	newinitd "${FILESDIR}/${PN}-initd" "${PN}"
	newconfd "${FILESDIR}/${PN}-confd" "${PN}"

	keepdir /var/log/mtproxy
	fowners mtproxy:mtproxy /var/log/mtproxy
}
