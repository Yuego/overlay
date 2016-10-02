# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7,3_3} pypy pypy3 )

inherit eutils distutils-r1 git-r3

DESCRIPTION="Bi-directional transliterator for Python. Transliterates (unicode) strings according to the rules specified in the language packs."
HOMEPAGE="https://github.com/barseghyanartur/transliterate"

EGIT_REPO_URI="git://github.com/barseghyanartur/transliterate.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/six
"
DEPEND="dev-python/setuptools"

