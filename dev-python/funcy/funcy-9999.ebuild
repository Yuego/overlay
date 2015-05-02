# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="A fancy and practical functional tools"
HOMEPAGE="https://github.com/Suor/funcy"

EGIT_REPO_URI="git://github.com/Suor/funcy.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools"
