# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1

DESCRIPTION="Suspend the execution of your program for a given amount of time"
HOMEPAGE="https://github.com/jgillick/python-pause"

SRC_URI="https://github.com/jgillick/python-pause/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

S="${WORKDIR}/python-${P}"

RDEPEND="
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
