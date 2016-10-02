# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit eutils distutils-r1

DESCRIPTION="A versatile test fixtures replacement based on thoughtbot's factory_girl for Ruby."
HOMEPAGE="https://github.com/rbarrois/factory_boy"

SRC_URI="https://github.com/rbarrois/factory_boy/archive/v${PV}.tar.gz -> ${P}.tar.gz"
MY_PN="${PN/-/_}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""


S="$WORKDIR/$MY_PN-$PV"
RDEPEND="
	dev-python/fake-factory
"
DEPEND="dev-python/setuptools"

