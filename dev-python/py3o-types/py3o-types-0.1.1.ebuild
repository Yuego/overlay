# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

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
	dev-python/six
	dev-python/lxml
"
DEPEND="dev-python/setuptools"

