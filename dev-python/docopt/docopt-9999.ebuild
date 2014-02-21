# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_2,3_3} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Pythonic command line arguments parser, that will make you smile"
HOMEPAGE="http://docopt.org"

EGIT_REPO_URI="git://github.com/docopt/docopt.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
"
DEPEND="dev-python/setuptools"

