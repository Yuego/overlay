# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit eutils distutils-r1

DESCRIPTION="An easy solution to design reports using OpenOffice"
HOMEPAGE="https://bitbucket.org/faide/py3o.template"

SRC_URI="https://bitbucket.org/faide/py3o.template/get/${PV}.tar.gz -> ${P}.tar.gz"
PY3O_COMMIT="0bb53b752ea0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

S="${WORKDIR}/faide-py3o.template-${PY3O_COMMIT}"

RDEPEND="
	dev-python/genshi
	dev-python/pyjon-utils
"
DEPEND="dev-python/setuptools"