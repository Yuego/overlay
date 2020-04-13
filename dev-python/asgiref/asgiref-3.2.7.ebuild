# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7,8} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="ASGI specification and utilities"
HOMEPAGE="https://github.com/django/asgiref https://asgi.readthedocs.io/en/latest/"

SRC_URI="https://github.com/django/asgiref/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
