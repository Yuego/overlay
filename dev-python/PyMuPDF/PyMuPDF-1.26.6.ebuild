# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{8..14} pypy3 )
DISTUTILS_USE_PEP517=no

inherit distutils-r1

DESCRIPTION="PyMuPDF is a Python binding for MuPDF"
HOMEPAGE="https://github.com/pymupdf/PyMuPDF"

MUPDF_VER="1.26.11"
SRC_URI="
	https://github.com/pymupdf/PyMuPDF/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
	https://mupdf.com/downloads/archive/mupdf-${MUPDF_VER}-source.tar.gz -> mupdf-tmp-${MUPDF_VER}.tar.gz
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="debug"
RESTRICT="test"

RDEPEND="
	>=app-text/mupdf-$MUPDF_VER
	<app-text/mupdf-1.27

	media-libs/harfbuzz
	media-libs/jbig2dec
	virtual/jpeg
	media-libs/freetype
	dev-libs/gumbo
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/clang[${PYTHON_USEDEP}]
"
DISTUTILS_EXT=1

distutils-r1_python_compile(){
	$EPYTHON setup.py bdist_wheel
}

src_prepare() {
	default

	patch -p1 -f -g0 --no-backup-if-mismatch -d "${WORKDIR}/mupdf-${MUPDF_VER}-source" < "${FILESDIR}/parse-${MUPDF_VER}.patch"
}

src_compile() {
	export PYMUPDF_SETUP_MUPDF_CLEAN=1
	export PYMUPDF_SETUP_MUPDF_BUILD="${WORKDIR}/mupdf-${MUPDF_VER}-source"
	export PYMUPDF_SETUP_MUPDF_TESSERACT=1
	export PYMUPDF_SETUP_MUPDF_THIRD=0

	distutils-r1_src_compile
}

distutils-r1_python_install(){
	# Дебильный хак...
	mv "${S}/dist/pymupdf-${PV}-cp${EPYTHON//[a-zA-Z.]/}-none-linux_x86_64.whl" "${S}/dist/pymupdf-${PV}-cp${EPYTHON//[a-zA-Z.]/}-abi3-linux_x86_64.whl"

	distutils_wheel_install "$D" "${S}/dist/pymupdf-${PV}-cp${EPYTHON//[a-zA-Z.]/}-abi3-linux_x86_64.whl"

	mv "$D/usr/bin/pymupdf" "$D/usr/bin/pymupdf-${EPYTHON//[a-zA-Z]/}"
}

