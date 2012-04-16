# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils subversion

ESVN_REPO_URI="http://django-blocks.googlecode.com/svn/trunk/"
DESCRIPTION="Django Blocks will provide an easier way to build Web apps more quickly and with almost no code."
HOMEPAGE="http://code.google.com/p/django-blocks/"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0
	dev-python/django-tagging"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="blocks"

src_test() {
	python setup.py test || die "tests failed"
}

src_install () {
	distutils_src_install
	#rm -fr "${D}"usr/lib*/python*/site-packages/tests
	#dodoc *.txt
}
