# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Dynamic and static host resolving for Django. Maps host names to URLconfs."
HOMEPAGE="https://github.com/ennio/django-hosts"

SRC_URI="https://github.com/ennio/django-hosts/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ia64 ppc ppc64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.7
"

DEPEND="dev-python/setuptools"

src_prepare(){
	sed -i "s#packages=find_packages()#packages=find_packages(exclude=('tests.*', 'tests'))#g" setup.py

}


