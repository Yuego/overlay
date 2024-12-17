# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{8..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Python library to simplify working with jsonlines and ndjson data"
HOMEPAGE="https://github.com/wbolster/jsonlines"

SRC_URI="https://github.com/wbolster/jsonlines/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/attrs-19.2.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
