# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils mercurial

EHG_REPO_URI="https://bitbucket.org/agr/ropevim"
DESCRIPTION="A vim plugin for using rope python refactoring plugin in vim."
HOMEPAGE="http://rope.sf.net/ropevim.html"
LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND="app-editors/vim[python]
	dev-python/ropemode"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="ropevim"

src_test() {
	python setup.py test || die "tests failed"
}

src_install () {
	distutils_src_install
	dodir usr/share/vim/vimfiles/ftplugin
	mv "${D}"/usr/share/vim/plugin/ropevim.vim "${D}"/usr/share/vim/vimfiles/ftplugin
	rmdir "${D}"/usr/share/vim/plugin
}
