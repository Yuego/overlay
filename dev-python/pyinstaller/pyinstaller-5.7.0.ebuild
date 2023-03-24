# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools

PYTHON_COMPAT=( python3_{10,11} )
inherit distutils-r1

DESCRIPTION="Bundles a Python application and all its dependencies into a single package."
HOMEPAGE="https://pypi.org/project/pyinstaller/"
SRC_URI="https://github.com/pyinstaller/pyinstaller/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2+-with-Pyinstaller-Bootloader-exception"
SLOT="0"
KEYWORDS="amd64"

RDEPEND=""
DEPEND="
	>=dev-python/setuptools-42.0.0[${PYTHON_USEDEP}]
	dev-python/setuptools-scm[${PYTHON_USEDEP}]
	dev-python/wheel[${PYTHON_USEDEP}]
"
BDEPEND="
"

distutils_enable_tests pytest

QA_PRESTRIPPED="usr/lib/python.*/site-packages/PyInstaller/bootloader/Linux-.*/run.*"

