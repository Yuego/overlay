# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1 git-r3

DESCRIPTION="Better directory iterator that returns all file info the OS provides"
HOMEPAGE="https://github.com/benhoyt/scandir"

EGIT_REPO_URI="git://github.com/benhoyt/scandir.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools"

