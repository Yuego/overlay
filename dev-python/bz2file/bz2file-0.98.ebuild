# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1 git-r3

DESCRIPTION="Python library for reading and writing bzip2-compressed files."
HOMEPAGE="https://github.com/nvawda/bz2file"

EGIT_REPO_URI="git://github.com/nvawda/bz2file.git"
EGIT_COMMIT="0f9de6fe3ba736fbe837d09c052320339ef6da94"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
"
DEPEND="dev-python/setuptools"

