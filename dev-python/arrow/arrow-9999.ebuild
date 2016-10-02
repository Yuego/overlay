# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Better dates & times for Python"
HOMEPAGE="https://github.com/crsmithdev/arrow ttps://arrow.readthedocs.org"

EGIT_REPO_URI="git://github.com/crsmithdev/arrow.git"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/python-dateutil	
"
DEPEND="dev-python/setuptools"

