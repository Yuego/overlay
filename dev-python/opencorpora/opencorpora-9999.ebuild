# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_2,3_3} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Python interface to opencorpora.org"
HOMEPAGE="http://opencorpora.org/"

EGIT_REPO_URI="git://github.com/kmike/opencorpora-tools.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools"


