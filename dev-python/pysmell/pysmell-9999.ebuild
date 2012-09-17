# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils git-2

DESCRIPTION="PySmell is a python IDE completion helper."
HOMEPAGE="http://code.google.com/p/pysmell/"

EGIT_REPO_URI="https://github.com/orestis/pysmell.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND="dev-lang/python
	"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="pysmell"

src_test() {
	python setup.py test || die "tests failed"
}

src_install () {
	distutils_src_install
	dodir usr/share/vim/vimfiles/plugin
	insinto usr/share/vim/vimfiles/plugin
	doins pysmell.vim
	rm -fr "${D}"usr/lib*/python*/site-packages/tests
}

