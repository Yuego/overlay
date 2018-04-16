# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python3_{3,4,5,6} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="fb2mobi (new generation) - derived from fb2conv 1.5.4"
HOMEPAGE="https://github.com/rupor-github/fb2mobi"

EGIT_REPO_URI="https://github.com/rupor-github/fb2mobi.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/cx_Freeze[${PYTHON_USEDEP}]	
"


src_prepare(){
	mv setup-cli.linux.cx_freeze.py setup.py
	default
}
