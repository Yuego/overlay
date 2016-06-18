# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Zeep: Python SOAP client"
HOMEPAGE="https://github.com/mvantellingen/python-zeep"

SRC_URI="https://github.com/mvantellingen/python-zeep/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/appdirs-1.4.0
	>=dev-python/defusedxml-0.4.1
	>=dev-python/isodate-0.5.4
	
	>=dev-python/lxml-3.0.0
	>=dev-python/requests-2.7.0
	>=dev-python/six-1.9.0
	dev-python/pytz
"
DEPEND="dev-python/setuptools"

S="${WORKDIR}/python-${P}"
