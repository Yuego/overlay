# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{6..10} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="A simple Python URL class"
HOMEPAGE="https://github.com/codeinthehole/purl"

EGIT_REPO_URI="https://github.com/codeinthehole/purl.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/six[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
