# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit eutils distutils-r1 mercurial

DESCRIPTION="Data type helpers for Py3o"
HOMEPAGE="https://pypi.python.org/pypi/py3o.types https://bitbucket.org/faide/py3o.types"

EHG_REPO_URI="https://bitbucket.org/faide/py3o.types"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/six
	dev-python/lxml
"
DEPEND="dev-python/setuptools"
