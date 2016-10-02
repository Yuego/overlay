# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Utilities for implementing a modified pre-order traversal tree in django."
HOMEPAGE="https://github.com/django-mptt/django-mptt"
SRC_URI="https://github.com/django-mptt/django-mptt/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.8"
DEPEND="dev-python/setuptools"

S="${WORKDIR}/django-mptt-${PV}"

src_prepare(){
	sed -i "s#packages=find_packages()#packages=find_packages(exclude=('tests.*', 'tests'))#g" setup.py
	distutils-r1_src_prepare
}
