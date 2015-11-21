# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_2,3_3,3_4,3_5} pypy2_0 )

inherit eutils distutils-r1 git-2

DESCRIPTION="Read DBF Files with Python"
HOMEPAGE="https://github.com/olemb/dbfread"

EGIT_REPO_URI="git://github.com/olemb/dbfread.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools"

