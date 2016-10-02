# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit eutils distutils-r1 mercurial

DESCRIPTION="An easy solution to design reports using OpenOffice"
HOMEPAGE="https://pypi.python.org/pypi/py3o.template"

EHG_REPO_URI="https://bitbucket.org/faide/py3o.template"


LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/genshi-0.7
	dev-python/six
	dev-python/lxml
	dev-python/pyjon-utils
"
DEPEND="dev-python/setuptools"

