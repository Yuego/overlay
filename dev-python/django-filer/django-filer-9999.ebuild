# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="File management application for django"
HOMEPAGE="https://github.com/django-cms/django-filer"

EGIT_REPO_URI="https://github.com/django-cms/django-filer.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-2.2[${PYTHON_USEDEP}]
	<dev-python/django-4.1[${PYTHON_USEDEP}]

	dev-python/django-mptt[${PYTHON_USEDEP}]
	dev-python/django_polymorphic[${PYTHON_USEDEP}]

	>=dev-python/easy-thumbnails-2.8.0[${PYTHON_USEDEP}]
	>=dev-python/unidecode-0.04[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare(){
	distutils-r1_src_prepare

	rm -r ./tests
}
