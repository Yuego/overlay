# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=poetry

inherit distutils-r1

DESCRIPTION="A Django app for adding object tools for models in the admin"
HOMEPAGE="https://github.com/crccheck/django-object-actions"

SRC_URI="https://github.com/crccheck/django-object-actions/releases/download/v4.3.0/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""
RESTRICT="test"


RDEPEND="
	>=dev-python/django-4.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
