# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python3_{3,4,5,6} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="VIN-code lists parser"
HOMEPAGE="https://github.com/Yuego/vincode"

EGIT_REPO_URI="git://github.com/Yuego/vincode.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/pyparsing[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
