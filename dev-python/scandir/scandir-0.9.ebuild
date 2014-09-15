# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Better directory iterator that returns all file info the OS provides"
HOMEPAGE="https://github.com/benhoyt/scandir"

EGIT_REPO_URI="git://github.com/benhoyt/scandir.git"
EGIT_COMMIT="21a0e17be544df0a540e7c83627791bbaefe9559"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools"

