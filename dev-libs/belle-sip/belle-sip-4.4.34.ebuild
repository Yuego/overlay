# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="Belle-sip is a modern library implementing SIP (RFC3261) transport"
HOMEPAGE="https://gitlab.linphone.org/BC/public/belle-sip"
SRC_URI="https://github.com/BelledonneCommunications/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
KEYWORDS="amd64"
SLOT="0"
IUSE="static-libs test zeroconf"
RESTRICT="test" # fails

RDEPEND="net-libs/bctoolbox[test?]
	sys-libs/zlib:=
	zeroconf? ( net-dns/avahi[mdnsresponder-compat] )"
DEPEND="${RDEPEND}"

src_configure() {
	local mycmakeargs=(
		-DENABLE_MDNS="$(usex zeroconf)"
		-DENABLE_STATIC="$(usex static-libs)"
		-DENABLE_TESTS="$(usex test)"
	)

	cmake_src_configure
}

