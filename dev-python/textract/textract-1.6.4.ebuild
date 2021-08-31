# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1

DESCRIPTION="Extract text from any document. No muss. No fuss."
HOMEPAGE="https://github.com/deanmalmgren/textract"

SRC_URI="https://github.com/deanmalmgren/textract/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="+tesseract"

RDEPEND="
	>=dev-python/argcomplete-1.10[${PYTHON_USEDEP}]
	>=dev-python/beautifulsoup-4.8[${PYTHON_USEDEP}]
	>=dev-python/chardet-3.0[${PYTHON_USEDEP}]
	<dev-python/chardet-4[${PYTHON_USEDEP}]
	app-text/antiword
	>=app-text/docx2txt-0.8

	app-text/pdfminer[${PYTHON_USEDEP}]
	tesseract? (
		app-text/tesseract
		app-text/poppler
	)

	>=dev-python/xlrd-1.2.0

	>=dev-python/six-1.12.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
