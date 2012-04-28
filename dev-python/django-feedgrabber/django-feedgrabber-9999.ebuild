# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils git-2

EGIT_REPO_URI="https://github.com/Fantomas42/django-feedgrabber.git"
DESCRIPTION="A RSS/Atom feeds grabber, for your Django websites. "
HOMEPAGE="https://github.com/Fantomas42/django-feedgrabber"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="feedgrabber"

src_test() {
	python setup.py test || die "tests failed"
}

src_install () {
	distutils_src_install
	#rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc LICENSE.txt README.rst
}
