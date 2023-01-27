# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..11} pypy3 )

inherit distutils-r1

DESCRIPTION="Django to add support for Money fields in your models and forms."
HOMEPAGE=""

SRC_URI="https://github.com/django-money/django-money/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/django-3.2[${PYTHON_USEDEP}]

	>=dev-python/moneyed-2.0[${PYTHON_USEDEP}]
	<dev-python/moneyed-4.0[${PYTHON_USEDEP}]

"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
