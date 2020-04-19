# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Ultra-lightweight pure Python package to guess whether a file is binary or text, using a heuristic similar to Perl's pp_fttext and its analysis by @eliben."
HOMEPAGE="https://github.com/audreyr/binaryornot https://binaryornot.readthedocs.io"

EGIT_REPO_URI="git://github.com/audreyr/binaryornot.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/chardet-2.0.0[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
