# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils mercurial

EHG_REPO_URI="https://bitbucket.org/offline/django-annoying"
DESCRIPTION="This is django application that try to eliminate annoying things in Django framework."
HOMEPAGE="https://bitbucket.org/offline/django-annoying/wiki/Home"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="annoying"

src_test() {
	python setup.py test || die "tests failed"
}

src_install () {
	distutils_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc *.txt
}
