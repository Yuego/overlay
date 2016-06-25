# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1 git-r3

DESCRIPTION="Python library implementing the GitHub API v3"
HOMEPAGE="http://pygithub.github.io/PyGithub/v1/index.html https://github.com/PyGithub/PyGithub"

EGIT_REPO_URI="git://github.com/PyGithub/PyGithub.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
"
DEPEND="dev-python/setuptools"

src_prepare(){
	sed -i "s/\"github.tests\",//g" setup.py
    sed -i "s/test_suite*$//g" setup.py
    distutils-r1_src_prepare
}
