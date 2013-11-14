# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 git-2

EGIT_REPO_URI="https://github.com/j2a/pytils.git"
DESCRIPTION="Pytils is a Russian-specific string utils (transliteration, numeral is words, russian dates, etc)"
HOMEPAGE="https://github.com/j2a/pytils"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools"

src_install () {
	distutils-r1_src_install
	#rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc LICENSE README.md
}
