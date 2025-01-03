# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=hatchling

inherit distutils-r1

DESCRIPTION="Utilities for implementing a modified pre-order traversal tree in django."
HOMEPAGE="https://github.com/django-mptt/django-mptt"
SRC_URI="https://github.com/django-mptt/django-mptt/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/django-3.2[${PYTHON_USEDEP}]
	dev-python/django-js-asset[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/django-mptt-${PV}"

src_prepare(){
	sed -i "s#packages=find_packages()#packages=find_packages(exclude=('tests.*', 'tests'))#g" setup.py
	distutils-r1_src_prepare
}
