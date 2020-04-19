# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Detect confusable usage of unicode homoglyphs, prevent homograph attacks."
HOMEPAGE="https://github.com/vhf/confusable_homoglyphs https://pypi.python.org/pypi/confusable_homoglyphs"

EGIT_REPO_URI="https://github.com/vhf/confusable_homoglyphs.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="cli"

RDEPEND="
	cli? (
		dev-python/click[${PYTHON_USEDEP}]
	)
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
