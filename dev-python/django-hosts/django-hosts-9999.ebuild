# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Dynamic and static host resolving for Django. Maps host names to URLconfs."
HOMEPAGE="https://github.com/ennio/django-hosts"

EGIT_REPO_URI="git://github.com/ennio/django-hosts.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.8[${PYTHON_USEDEP}]
	<dev-python/django-2.1[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
"

src_prepare(){
	sed -i "s#packages=find_packages()#packages=find_packages(exclude=('tests.*', 'tests'))#g" setup.py
	sed -i "s#use_scm_version=True,##g" setup.py
	sed -i "s#'setuptools_scm'##g" setup.py
	distutils-r1_src_prepare
}
