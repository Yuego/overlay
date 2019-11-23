# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Transparently use webpack with django"
HOMEPAGE="https://github.com/owais/django-webpack-loader"

EGIT_REPO_URI="https://github.com/owais/django-webpack-loader.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"