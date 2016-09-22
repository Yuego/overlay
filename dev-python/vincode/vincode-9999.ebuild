# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1 git-r3

DESCRIPTION="VIN-code lists parser"
HOMEPAGE="https://github.com/Yuego/vincode"

EGIT_REPO_URI="git://github.com/Yuego/vincode.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/pyparsing
"
DEPEND="dev-python/setuptools"

