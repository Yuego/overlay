# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="C++ library implementing Open Whisper System Signal protocol"
HOMEPAGE="https://gitlab.linphone.org/BC/public/lime"
SRC_URI="https://github.com/BelledonneCommunications/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
KEYWORDS="amd64 ~x86"
SLOT="0"
IUSE="doc static-libs test"
RESTRICT="test" # segfault

RDEPEND="dev-db/soci[sqlite]
	net-libs/bctoolbox[test?]"
DEPEND="${RDEPEND}"
BDEPEND="doc? ( app-doc/doxygen )
	test? ( dev-libs/belle-sip )"

src_configure() {
	local mycmakeargs=(
		-DENABLE_STATIC="$(usex static-libs)"
		-DENABLE_UNIT_TESTS="$(usex test)"
	)

	cmake_src_configure
}
