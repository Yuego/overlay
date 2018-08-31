# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit eutils distutils-r1 mercurial

DESCRIPTION="Data type helpers for Py3o"
HOMEPAGE="https://pypi.python.org/pypi/py3o.types https://bitbucket.org/faide/py3o.types"

EHG_REPO_URI="https://bitbucket.org/faide/py3o.types"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/six[$PYTHON_USEDEP}]
	dev-python/lxml[$PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[$PYTHON_USEDEP}]"
