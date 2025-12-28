# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{10..14} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION="App to make Django some OK"
EGIT_REPO_URI="https://github.com/Yuego/djok.git"
EGIT_COMMIT="ec8eabbac103477051b674176bd9b31396d183d1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/django-4.2.0[${PYTHON_USEDEP}]
"

DEPEND=""

