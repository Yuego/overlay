# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="File and Image Management Application for django"
HOMEPAGE="https://github.com/divio/django-filer https://django-filer.readthedocs.io/en/latest/index.html"

SRC_URI="https://github.com/divio/django-filer/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.8[${PYTHON_USEDEP}]
	<dev-python/django-2

	>=dev-python/easy-thumbnails-2.0[${PYTHON_USEDEP}]
	<dev-python/easy-thumbnails-3.0

	>=dev-python/django-mptt-0.6[${PYTHON_USEDEP}]
	<dev-python/django-mptt-0.10

	>=dev-python/django_polymorphic-0.7[${PYTHON_USEDEP}]
	<dev-python/django_polymorphic-2.1[${PYTHON_USEDEP}]

	>=dev-python/unidecode-0.04[${PYTHON_USEDEP}]
	<dev-python/unidecode-0.05
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
