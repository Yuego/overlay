# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit eutils distutils-r1 git-r3

DESCRIPTION="A versatile test fixtures replacement based on thoughtbot's factory_girl for Ruby."
HOMEPAGE="https://github.com/rbarrois/factory_boy"

EGIT_REPO_URI="git://github.com/rbarrois/factory_boy.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/fake-factory[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
