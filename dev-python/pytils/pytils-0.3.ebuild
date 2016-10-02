# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Pytils is a Russian-specific string utils (transliteration, numeral is words, russian dates, etc)"
HOMEPAGE="https://github.com/j2a/pytils"

EGIT_REPO_URI="https://github.com/j2a/pytils.git"
EGIT_COMMIT="d5bb6907595bdac3edaba41bb8e0e78fa0f529bc"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools"

src_install () {
	distutils-r1_src_install
	#rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc LICENSE README.md
}
