# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit eutils distutils-r1

DESCRIPTION="An easy solution to design reports using OpenOffice"
HOMEPAGE="https://bitbucket.org/faide/py3o.template"

SRC_URI="https://github.com/Yuego/py3o.template/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

S="${WORKDIR}/faide-py3o.template-${PY3O_COMMIT}"

RDEPEND="
	dev-python/genshi[${PYTHON_USEDEP}]
	dev-python/pyjon-utils[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
