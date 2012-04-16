# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils git-2

EGIT_REPO_URI="https://github.com/matthiask/feincms.git"
DESCRIPTION="UNOFFICIAL and often experimental version of FeinCMS."
HOMEPAGE="https://github.com/matthiask/feincms"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	dev-python/django-nested-sets"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="feincms"

src_test() {
	python setup.py test || die "tests failed"
}

src_install () {
	distutils_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/{tests,example}
	dodoc AUTHORS LICENSE QUICKSTART.rst README.rst
}
