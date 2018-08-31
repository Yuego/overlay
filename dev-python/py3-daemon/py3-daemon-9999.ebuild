# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python3_{3,4,5,6,7} )

inherit distutils-r1 git-r3

DESCRIPTION="Library to implement a well-behaved Unix daemon process."
HOMEPAGE="https://github.com/Yuego/python-daemon"

EGIT_REPO_URI="git://github.com/Yuego/python-daemon.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="-test"

RDEPEND="
	>=dev-python/lockfile-0.9.1[${PYTHON_USEDEP}]
	test? (
		>=dev-python/minimock-1.2.2[${PYTHON_USEDEP}]
	)
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
