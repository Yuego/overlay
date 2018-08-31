# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit eutils distutils-r1

DESCRIPTION="A versatile test fixtures replacement based on thoughtbot's factory_girl for Ruby."
HOMEPAGE="https://github.com/rbarrois/factory_boy"

SRC_URI="https://github.com/rbarrois/factory_boy/archive/${PV}.tar.gz -> ${P}.tar.gz"
MY_PN="${PN/-/_}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S="$WORKDIR/$MY_PN-$PV"
RDEPEND="
	dev-python/fake-factory[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
