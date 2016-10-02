# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit eutils distutils-r1 git-r3

DESCRIPTION="Read DBF Files with Python"
HOMEPAGE="https://github.com/olemb/dbfread"

EGIT_REPO_URI="git://github.com/olemb/dbfread.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools"
