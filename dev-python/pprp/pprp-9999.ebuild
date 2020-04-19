# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Pure-Python Rijndael and PBKDF2 package."
HOMEPAGE="https://github.com/dsoprea/RijndaelPbkdf"

EGIT_REPO_URI="https://github.com/dsoprea/RijndaelPbkdf.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
