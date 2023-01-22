# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{6..10} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Extract text from any document. No muss. No fuss."
HOMEPAGE="https://github.com/deanmalmgren/textract"

EGIT_REPO_URI="https://github.com/Yuego/textract.git"
EGIT_COMMIT="cc459ed1fd88bbd92c52fa448263fc3b40341447"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="+tesseract"

RDEPEND="
	>=dev-python/argcomplete-1.10[${PYTHON_USEDEP}]
	>=dev-python/beautifulsoup4-4.8[${PYTHON_USEDEP}]
	>=dev-python/chardet-3.0[${PYTHON_USEDEP}]
	app-text/antiword
	app-text/catdoc
	>=dev-python/docx2txt-0.8

	app-text/pdfminer[${PYTHON_USEDEP}]
	tesseract? (
		app-text/tesseract
		app-text/poppler
	)

	>=dev-python/xlrd-1.2.0

	>=dev-python/six-1.12.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
