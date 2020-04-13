# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="A Django application that provides country choices for use with forms,
flag icons static files, and a country field for models."

HOMEPAGE="https://github.com/SmileyChris/django-countries"

SRC_URI="https://github.com/SmileyChris/django-countries/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

