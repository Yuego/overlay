# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python3_{4,5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="A drop-in replacement for django's ImageField"
HOMEPAGE="http://django-versatileimagefield.readthedocs.io/ https://github.com/respondcreate/django-versatileimagefield"

SRC_URI="https://github.com/respondcreate/django-versatileimagefield/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="rest"

RDEPEND="
	>=dev-python/django-1.8[${PYTHON_USEDEP}]
	<dev-python/django-3.1
	>=dev-python/pillow-2.4.0[${PYTHON_USEDEP}]
	<=dev-python/pillow-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/python-magic-0.4.15[${PYTHON_USEDEP}]
	<dev-python/python-magic-1.0.0
	rest? (
		>=dev-python/django-rest-framework-3.0.0[${PYTHON_USEDEP}]
	)
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare(){
	sed -i "s/find_packages()/find_packages(exclude=('tests', 'tests.*'))/g" setup.py
	distutils-r1_src_prepare
}
