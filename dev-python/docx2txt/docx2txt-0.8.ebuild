# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION="A pure python-based utility to extract text from docx files."
HOMEPAGE="https://github.com/Yuego/python-docx2txt"

EGIT_REPO_URI="https://github.com/Yuego/python-docx2txt.git"
EGIT_COMMIT="67f226c92ec333ad4968d3acf45b3ba3ffc0192b"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
