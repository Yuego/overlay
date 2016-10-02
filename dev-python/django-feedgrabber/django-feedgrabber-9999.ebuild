# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy pypy3 )

inherit distutils-r1 git-r3

EGIT_REPO_URI="git://github.com/Yuego/django-feedgrabber.git"
DESCRIPTION="A RSS/Atom feeds grabber, for your Django websites. "
HOMEPAGE="https://github.com/Fantomas42/django-feedgrabber"
LICENSE="MIT"
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
