# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8,9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="LevelDB Python interface using ctypes"
HOMEPAGE="https://github.com/arnimarj/py-leveldb"

EGIT_REPO_URI="https://github.com/arnimarj/py-leveldb.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	dev-libs/leveldb
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
