# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6,7} pypy pypy3 )
inherit distutils-r1

DESCRIPTION="A modern/fast Python SOAP client based on lxml / requests"
HOMEPAGE="http://docs.python-zeep.org/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+async xmlsec"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
	>=dev-python/appdirs-1.4.0[${PYTHON_USEDEP}]
	>=dev-python/cached-property-1.3.0[${PYTHON_USEDEP}]
	>=dev-python/defusedxml-0.4.1[${PYTHON_USEDEP}]
	>=dev-python/isodate-0.5.4[${PYTHON_USEDEP}]
	>=dev-python/lxml-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.7.0[${PYTHON_USEDEP}]
	>=dev-python/requests-toolbelt-0.7.1[${PYTHON_USEDEP}]
	>=dev-python/six-1.9.0[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	async? (
		>=dev-python/aiohttp-1.0[$(python_gen_usedep 'python3*')]
		>=dev-python/aioresponses-0.1.3[$(python_gen_usedep 'python3*')]
	)
	xmlsec? (
		>=dev-python/xmlsec-0.6.1[${PYTHON_USEDEP}]
	)
"

DOCS=( README.rst CHANGES )
