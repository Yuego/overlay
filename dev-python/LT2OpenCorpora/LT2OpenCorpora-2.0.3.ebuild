# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Python script to convert the Ukrainian morphological dictionary from the LanguageTool project to the OpenCorpora format."
HOMEPAGE="https://github.com/dchaplinsky/LT2OpenCorpora"

EGIT_REPO_URI="https://github.com/dchaplinsky/LT2OpenCorpora.git"
EGIT_COMMIT="7bf48098ec2db4c8955a660fd0c1b80a16e43054"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="plot"

RDEPEND="
	>=dev-python/blinker-1.3[${PYTHON_USEDEP}]
	>=dev-python/unicodecsv-0.14.1[${PYTHON_USEDEP}]
	>=dev-python/bz2file-0.98[${PYTHON_USEDEP}]
	>dev-python/requests-2.5.1[${PYTHON_USEDEP}]
	plot? ( >=media-gfx/pydot-1.2.4 )
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare(){
	distutils-r1_src_prepare

	sed -i "s/from .convert import Dictionary/pass/g" lt2opencorpora/__init__.py
}
