# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Email reply parser library for Python"
HOMEPAGE="https://github.com/zapier/email-reply-parser"

EGIT_REPO_URI="git://github.com/zapier/email-reply-parser.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
