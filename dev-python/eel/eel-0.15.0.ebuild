# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10,11} )
inherit distutils-r1

DESCRIPTION="Eel is a little Python library for making Electron-like offline HTML/JS GUI apps"
HOMEPAGE="https://github.com/python-eel/Eel"
SRC_URI="https://github.com/python-eel/Eel/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

RDEPEND="
	>=dev-python/bottle-0.12.20[${PYTHON_USEDEP}]
	>=dev-python/gevent-1.3.6[${PYTHON_USEDEP}]
	virtual/python-greenlet[${PYTHON_USEDEP}]
	>=dev-python/pyparsing-2.4.7[${PYTHON_USEDEP}]
	>=dev-python/whichcraft-0.4.1[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
BDEPEND=""

distutils_enable_tests pytest

S="${WORKDIR}/Eel-${PV}"
