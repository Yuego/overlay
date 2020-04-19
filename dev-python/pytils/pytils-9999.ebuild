# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Pytils is a Russian-specific string utils (transliteration, numeral is words, russian dates, etc)"
HOMEPAGE="https://github.com/j2a/pytils"

EGIT_REPO_URI="https://github.com/j2a/pytils.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.0[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_install () {
	distutils-r1_src_install
	#rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc README.md
}
