# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit eutils distutils-r1

DESCRIPTION="Tendo is a python module that adds basic functionality that is not (yet) provided by Python."
HOMEPAGE="https://github.com/pycontribs/tendo"

SRC_URI="https://github.com/pycontribs/tendo/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="PYTHON"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/pbr-1.9[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
