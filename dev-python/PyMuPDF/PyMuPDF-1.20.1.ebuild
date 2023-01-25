# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1

DESCRIPTION="PyMuPDF is a Python binding for MuPDF"
HOMEPAGE="https://github.com/pymupdf/PyMuPDF"

SRC_URI="https://github.com/pymupdf/PyMuPDF/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=app-text/mupdf-1.20.0
	<app-text/mupdf-1.21

	media-libs/harfbuzz
	media-libs/jbig2dec
	virtual/jpeg
	media-libs/freetype
	dev-libs/gumbo
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare() {
	sed -i -e '/"mupdf-third",/d' setup.py || die "sed failed"
	sed -i -e 's/"mupdf-third"//g' setup.py || die "sed failed"
	sed -i -e '/data_files.*$/d' setup.py || die "sed failed"
	export PYMUPDF_SETUP_MUPDF_BUILD=""
	default
}
