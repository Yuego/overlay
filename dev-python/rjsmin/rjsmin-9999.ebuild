# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Fast javascript minifier for Python http://opensource.perlig.de/rjsmin/"
HOMEPAGE="https://github.com/ndparker/rjsmin"

EGIT_REPO_URI="git://github.com/ndparker/rjsmin.git"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools"
