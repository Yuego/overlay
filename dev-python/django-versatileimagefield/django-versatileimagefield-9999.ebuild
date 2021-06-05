# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="A drop-in replacement for django's ImageField"
HOMEPAGE="http://django-versatileimagefield.readthedocs.io/ https://github.com/respondcreate/django-versatileimagefield"

EGIT_REPO_URI="git://github.com/respondcreate/django-versatileimagefield.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="rest"

RDEPEND="
	>=dev-python/django-2.2[${PYTHON_USEDEP}]
	<dev-python/django-3.1
	>=dev-python/pillow-2.4.0[${PYTHON_USEDEP}]
	rest? (
		>=dev-python/django-rest-framework-3.0.0[${PYTHON_USEDEP}]
	)
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare(){
	sed -i "s/find_packages()/find_packages(exclude=('tests', 'tests.*'))/g" setup.py
	distutils-r1_src_prepare
}
