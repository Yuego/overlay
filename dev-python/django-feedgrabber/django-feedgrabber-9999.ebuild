# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 git-2

EGIT_REPO_URI="git://github.com/Yuego/django-feedgrabber.git"
DESCRIPTION="A RSS/Atom feeds grabber, for your Django websites. "
HOMEPAGE="https://github.com/Fantomas42/django-feedgrabber"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0
	dev-python/feedparser
	dev-python/pytils"
DEPEND="dev-python/setuptools"

src_install () {
	distutils_src_install
	#rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc LICENSE.txt README.rst
}
