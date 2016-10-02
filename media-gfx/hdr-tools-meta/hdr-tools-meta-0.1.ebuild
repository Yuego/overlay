# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=4

SRC_URI=""
DESCRIPTION="Vizit3d meta"
HOMEPAGE="http://vizit3d.ru"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

RDEPEND="
	media-gfx/enblend
	media-gfx/ufraw
	media-gfx/jhead
	media-gfx/gimp

	media-gfx/dcraw
	media-gfx/pfscalibration
	media-gfx/pfstmo
"

DEPEND="${RDEPEND}"
