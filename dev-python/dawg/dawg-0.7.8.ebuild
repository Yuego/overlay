# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="DAWG-based dictionary-like read-only objects for Python. Based on 'dawgdic' C++ library."
HOMEPAGE="https://github.com/kmike/DAWG"

SRC_URI="https://github.com/kmike/DAWG/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="test"

RDEPEND=""
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/DAWG-${PV}"
