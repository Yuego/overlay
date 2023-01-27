# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..11} pypy3 )

inherit distutils-r1

DESCRIPTION="Currencies in Python"
HOMEPAGE="https://github.com/py-moneyed/py-moneyed"

SRC_URI="https://github.com/py-moneyed/py-moneyed/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
 
LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	dev-python/typing-extensions[${PYTHON_USEDEP}]
	>=dev-python/Babel-2.8.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/py-${P}"
