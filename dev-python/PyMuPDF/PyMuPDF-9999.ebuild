# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="PyMuPDF is a Python binding for MuPDF"
HOMEPAGE="https://github.com/pymupdf/PyMuPDF"

EGIT_REPO_URI="https://github.com/pymupdf/PyMuPDF.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	app-text/mupdf
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
	default
}
