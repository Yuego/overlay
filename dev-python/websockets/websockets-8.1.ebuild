# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7,8} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Library for building WebSocket servers and clients in Python"
HOMEPAGE="https://github.com/aaugustin/websockets"

SRC_URI="https://github.com/aaugustin/websockets/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
