# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="A generic system for filtering Django QuerySets based on user selections"
HOMEPAGE="https://github.com/alex/django-filter"

SRC_URI="https://github.com/alex/django-filter/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/django-4.2[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/flit-core-3.2[${PYTHON_USEDEP}]
"
