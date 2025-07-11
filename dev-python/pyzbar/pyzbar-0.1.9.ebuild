# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( pypy3_11 python3_{11..14} )

inherit distutils-r1

DESCRIPTION="Read one-dimensional barcodes and QR codes from Python"
HOMEPAGE="
	https://github.com/NaturalHistoryMuseum/pyzbar/
	https://pypi.org/project/pyzbar/
"
SRC_URI="
	https://github.com/NaturalHistoryMuseum/pyzbar/archive/v${PV}.tar.gz
		-> ${P}.gh.tar.gz
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~arm64 ~x86"

RDEPEND="
	dev-python/pillow[${PYTHON_USEDEP}]
	media-gfx/zbar
"

BDEPEND="
	test? (
		dev-python/numpy[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests unittest
