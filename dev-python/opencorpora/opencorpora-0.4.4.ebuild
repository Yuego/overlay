# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_2,3_3} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Python interface to opencorpora.org"
HOMEPAGE="http://opencorpora.org/"

SRC_URI="https://github.com/kmike/opencorpora-tools/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools"

S="${WORKDIR}/${PN}-tools-${PV}/"
