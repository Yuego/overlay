# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="A Python library that converts cron expressions into human readable strings"
HOMEPAGE="https://github.com/Salamek/cron-descriptor"

SRC_URI="https://github.com/Salamek/cron-descriptor/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
