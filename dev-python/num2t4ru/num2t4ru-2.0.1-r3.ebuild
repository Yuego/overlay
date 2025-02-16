# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Numbers to text. Russian Language"
HOMEPAGE="https://github.com/Yuego/num2t4ru"

SRC_URI="https://github.com/Yuego/num2t4ru/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
RESTRICT="test"

RDEPEND=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
