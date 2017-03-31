# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5} pypy )

inherit distutils-r1

DESCRIPTION="Zeep: Python SOAP client"
HOMEPAGE="https://github.com/mvantellingen/python-zeep"

SRC_URI="https://github.com/mvantellingen/python-zeep/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/appdirs-1.4.0[${PYTHON_USEDEP}]
	>=dev-python/cached-property-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/defusedxml-0.4.1[${PYTHON_USEDEP}]
	>=dev-python/isodate-0.5.4[${PYTHON_USEDEP}]

	>=dev-python/lxml-3.0.0[$(python_gen_usedep 'python*')]
	>=dev-python/requests-2.7.0[${PYTHON_USEDEP}]
	>=dev-python/six-1.9.0[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/python-${P}"
