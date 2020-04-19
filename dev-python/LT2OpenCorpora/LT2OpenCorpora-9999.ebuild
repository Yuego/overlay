# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Python script to convert the Ukrainian morphological dictionary from the LanguageTool project to the OpenCorpora format."
HOMEPAGE="https://github.com/dchaplinsky/LT2OpenCorpora"

EGIT_REPO_URI="https://github.com/dchaplinsky/LT2OpenCorpora.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="plot"

RDEPEND="
	dev-python/blinker[${PYTHON_USEDEP}]
	dev-python/unicodecsv[${PYTHON_USEDEP}]
	>=dev-python/bz2file-0.98[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	plot? ( >=media-gfx/pydot-1.0.2 )
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
