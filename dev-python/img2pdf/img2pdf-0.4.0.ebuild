# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8,9} pypy3 )

inherit distutils-r1

DESCRIPTION="Losslessly convert images to pdf"
HOMEPAGE="https://github.com/josch/img2pdf"

SRC_URI="https://github.com/josch/img2pdf/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	dev-python/pillow[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
