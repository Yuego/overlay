# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1 git-r3

DESCRIPTION="A fast, extensible progress bar for Python"
HOMEPAGE="https://github.com/tqdm/tqdm https://pypi.python.org/pypi/tqdm"

EGIT_REPO_URI="git://github.com/tqdm/tqdm.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
"
DEPEND="dev-python/setuptools"

