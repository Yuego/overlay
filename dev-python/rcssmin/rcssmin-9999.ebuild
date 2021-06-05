# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Fast CSS minifier for Python http://opensource.perlig.de/rcssmin/"
HOMEPAGE="https://github.com/ndparker/rcssmin"

EGIT_REPO_URI="git://github.com/ndparker/rcssmin.git"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
