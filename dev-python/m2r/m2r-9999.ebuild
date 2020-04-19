# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Markdown and reST in a single file"
HOMEPAGE="https://github.com/miyakogi/m2r"

EGIT_REPO_URI="git://github.com/miyakogi/m2r.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/mistune[${PYTHON_USEDEP}]
	dev-python/docutils[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare(){
    sed -i "s/packages=\[.*\]/packages=[]/g" setup.py
    distutils-r1_src_prepare
}

