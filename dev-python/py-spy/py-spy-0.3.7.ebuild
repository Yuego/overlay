# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1

DESCRIPTION="Sampling profiler for Python programs"
HOMEPAGE="https://github.com/benfred/py-spy"

SRC_URI="https://github.com/benfred/py-spy/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_rust[${PYTHON_USEDEP}]
"

src_prepare() {
	default

	cp "${FILESDIR}/MANIFEST.in" .
	cp "${FILESDIR}/pyproject.toml" .
	cp "${FILESDIR}/build-wheels.sh" .
	mkdir py_spy
	cp "${FILESDIR}/py_spy/__init__.py" ./py_spy/
	cp "${FILESDIR}/setup.py" .
}
