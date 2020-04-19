# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7,8} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="ASGI specification and utilities"
HOMEPAGE="https://github.com/django/asgiref https://asgi.readthedocs.io/en/latest/"

EGIT_REPO_URI="https://github.com/django/asgiref.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
