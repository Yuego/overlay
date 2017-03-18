# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="File and Image Management Application for django"
HOMEPAGE="https://github.com/divio/django-filer https://django-filer.readthedocs.io/en/latest/index.html"

EGIT_REPO_URI="git://github.com/divio/django-filer.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.5
	<dev-python/django-1.11

	>=dev-python/easy-thumbnails-1.0
	<dev-python/easy-thumbnails-2.4

	>=dev-python/django-mptt-0.6
	<dev-python/django-mptt-0.9

	>=dev-python/django_polymorphic-0.7

	>=dev-python/unidecode-0.04
	<dev-python/unidecode-0.05
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
