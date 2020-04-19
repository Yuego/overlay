# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Python port of Google's libphonenumber"
HOMEPAGE="https://github.com/daviddrysdale/python-phonenumbers"

EGIT_REPO_URI="git://github.com/daviddrysdale/python-phonenumbers.git"
EGIT_MASTER="dev"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_compile() {
	cd "$S/python"
	distutils-r1_src_compile
}
