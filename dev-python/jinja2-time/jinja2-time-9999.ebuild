# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Jinja2 Extension for Dates and Times"
HOMEPAGE="https://github.com/hackebrot/jinja2-time"

EGIT_REPO_URI="git://github.com/hackebrot/jinja2-time.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/jinja-2.7[${PYTHON_USEDEP}]
	dev-python/arrow[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
