# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Dynamic and static host resolving for Django. Maps host names to URLconfs."
HOMEPAGE="https://github.com/ennio/django-hosts"

SRC_URI="https://github.com/ennio/django-hosts/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.8
"

DEPEND="
	dev-python/setuptools
	dev-python/setuptools_scm
"

src_prepare(){
	sed -i "s#packages=find_packages()#packages=find_packages(exclude=('tests.*', 'tests'))#g" setup.py
	sed -i "s#use_scm_version=True,##g" setup.py
	sed -i "s#'setuptools_scm'##g" setup.py
	distutils-r1_src_prepare
}
