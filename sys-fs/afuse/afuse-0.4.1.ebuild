# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit autotools

DESCRIPTION="An automounting file system implemented in user-space using FUSE"
HOMEPAGE="https://github.com/pcarrier/afuse/"
SRC_URI="https://github.com/pcarrier/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

IUSE=""

RDEPEND="sys-fs/fuse"
DEPEND="
	${RDEPEND}
	virtual/pkgconfig
"

src_prepare() {
	eapply_user
	eautoreconf
}
