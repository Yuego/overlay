# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit games cmake-utils subversion

DESCRIPTION="Advanced UrbanTerror launcher program"
HOMEPAGE="http://code.google.com/p/urtconnector/"
ESVN_REPO_URI="http://urtconnector.googlecode.com/svn/trunk/"

LICENSE="GPL"
KEYWORDS="~x86 ~amd64"
SLOT="0"
IUSE=""

RDEPEND="dev-qt/qtgui:4
		media-libs/phonon
		games-util/qstat
		dev-libs/boost"
DEPEND="${RDEPEND}"

src_unpack() {
	subversion_src_unpack
}
