# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Losslessly convert images to pdf"
HOMEPAGE="https://github.com/josch/img2pdf"

EGIT_REPO_URI="git://github.com/josch/img2pdf.git"

LICENSE="LGPL"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/pillow[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
