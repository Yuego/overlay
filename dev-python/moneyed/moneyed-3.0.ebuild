# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Currencies in Python"
HOMEPAGE="https://github.com/py-moneyed/py-moneyed"

SRC_URI="https://github.com/py-moneyed/py-moneyed/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/typing-extensions-3.7.4.3[${PYTHON_USEDEP}]
	>=dev-python/babel-2.8.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/py-${P}"
