# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="A drop-in replacement for django's ImageField"
HOMEPAGE="http://django-versatileimagefield.readthedocs.io/ https://github.com/respondcreate/django-versatileimagefield"

EGIT_REPO_URI="git://github.com/respondcreate/django-versatileimagefield.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="rest"

RDEPEND="
	>=dev-python/django-1.7
	>=dev-python/pillow-2.4.0
	rest? (
		>=dev-python/django-rest-framework-3.0.0
	)
"
DEPEND="dev-python/setuptools"

src_prepare(){
	sed -i "s/find_packages()/find_packages(exclude=('tests', 'tests.*'))/g" setup.py
	distutils-r1_src_prepare
}
