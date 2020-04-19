# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy )

inherit distutils-r1

DESCRIPTION="Pure-python reader for DAWGs"
HOMEPAGE="https://github.com/kmike/DAWG-Python"

SRC_URI="https://github.com/kmike/DAWG-Python/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="test"

RDEPEND=""
DEPEND="dev-python/setuptools"

S="${WORKDIR}/DAWG-Python-${PV}"
