# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Zeep: Python SOAP client"
HOMEPAGE="https://github.com/mvantellingen/python-zeep"

EGIT_REPO_URI="git://github.com/mvantellingen/python-zeep.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="async xmlsec"

RDEPEND="
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
        >=dev-python/aiohttp-1.0[${PYTHON_USEDEP}]
        >=dev-python/aioresponses-0.1.3[${PYTHON_USEDEP}]
    )
    xmlsec? (
        >=dev-python/xmlsec-0.6.1[${PYTHON_USEDEP}]
    )
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"