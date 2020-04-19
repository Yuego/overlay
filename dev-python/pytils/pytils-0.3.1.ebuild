# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Pytils is a Russian-specific string utils (transliteration, numeral is words, russian dates, etc)"
HOMEPAGE="https://github.com/j2a/pytils"

EGIT_REPO_URI="https://github.com/j2a/pytils.git"
EGIT_COMMIT="d5bb6907595bdac3edaba41bb8e0e78fa0f529bc"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools"[${PYTHON_USEDEP}]

DOCS="LICENSE README.md"
