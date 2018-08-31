# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit eutils distutils-r1

DESCRIPTION="Data type helpers for Py3o"
HOMEPAGE="https://bitbucket.org/faide/py3o.types"

SRC_URI="https://bitbucket.org/faide/py3o.types/get/${PV}.tar.gz -> ${P}.tar.gz"
PY3O_COMMIT="12215c8891af"

LICENSE="BSD"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

S="${WORKDIR}/faide-py3o.types-${PY3O_COMMIT}"

RDEPEND="
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
