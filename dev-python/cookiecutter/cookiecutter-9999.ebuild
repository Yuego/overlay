# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="A command-line utility that creates projects from cookiecutters (project templates), e.g. creating a Python package project from a Python package project template."
HOMEPAGE="https://github.com/audreyr/cookiecutter https://cookiecutter.readthedocs.io"

EGIT_REPO_URI="git://github.com/audreyr/cookiecutter.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/future-0.15.2[${PYTHON_USEDEP}]
	>=dev-python/binaryornot-0.2.0[${PYTHON_USEDEP}]
	>=dev-python/jinja-2.7[${PYTHON_USEDEP}]
	>=dev-python/click-5.0[${PYTHON_USEDEP}]
	>=dev-python/whichcraft-0.4.0[${PYTHON_USEDEP}]
	>=dev-python/poyo-0.1.0[${PYTHON_USEDEP}]
	>=dev-python/jinja2-time-0.1.0[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
