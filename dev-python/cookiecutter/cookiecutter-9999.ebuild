# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="A command-line utility that creates projects from cookiecutters (project templates), e.g. creating a Python package project from a Python package project template."
HOMEPAGE="https://github.com/audreyr/cookiecutter https://cookiecutter.readthedocs.io"

EGIT_REPO_URI="git://github.com/audreyr/cookiecutter.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/future-0.15.2
	>=dev-python/binaryornot-0.2.0
	>=dev-python/jinja-2.7
	>=dev-python/click-5.0
	>=dev-python/whichcraft-0.4.0
	>=dev-python/poyo-0.1.0
	>=dev-python/jinja2-time-0.1.0
"
DEPEND="dev-python/setuptools"
