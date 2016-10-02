# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Python library implementing the GitHub API v3"
HOMEPAGE="http://pygithub.github.io/PyGithub/v1/index.html https://github.com/PyGithub/PyGithub"

SRC_URI="https://github.com/PyGithub/PyGithub/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="1"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
"
DEPEND="dev-python/setuptools"

S="${WORKDIR}/PyGithub-${PV}"

src_prepare(){
	sed -i "s/\"github.tests\",//g" setup.py
	sed -i "s/test_suite*$//g" setup.py
	distutils-r1_src_prepare
}
