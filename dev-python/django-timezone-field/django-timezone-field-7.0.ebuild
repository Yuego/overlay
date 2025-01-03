# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=poetry

inherit distutils-r1

DESCRIPTION="A Django app providing database and form fields for pytz timezone objects."
HOMEPAGE="https://github.com/mfogel/django-timezone-field"

SRC_URI="https://github.com/mfogel/django-timezone-field/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/django-4.2[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/poetry-core-1.0.0[${PYTHON_USEDEP}]
"
