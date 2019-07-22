# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Python bindings for the Hunspell spellchecker engine"
HOMEPAGE="https://github.com/blatinier/pyhunspell"

EGIT_REPO_URI="https://github.com/blatinier/pyhunspell.git"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	app-text/hunspell
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"