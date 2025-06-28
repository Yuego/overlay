# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=poetry

inherit distutils-r1

DESCRIPTION="Pytils is a Russian-specific string utils"
HOMEPAGE="https://github.com/j2a/pytils"

SRC_URI="https://github.com/last-partizan/pytils/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
RESTRICT="test"

RDEPEND=">=dev-python/django-2.0[${PYTHON_USEDEP}]"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/poetry-core[${PYTHON_USEDEP}]
"

DOCS="LICENSE README.md"
