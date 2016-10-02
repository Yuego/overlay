# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Python interface to opencorpora.org"
HOMEPAGE="http://opencorpora.org/ https://github.com/kmike/opencorpora-tools"

EGIT_REPO_URI="git://github.com/kmike/opencorpora-tools.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools"


