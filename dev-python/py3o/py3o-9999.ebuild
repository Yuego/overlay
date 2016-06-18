# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit eutils distutils-r1 subversion

DESCRIPTION="An easy solution to design reports using OpenOffice"
HOMEPAGE="https://pypi.python.org/pypi/py3o.template"

ESVN_REPO_URI="http://svn.edgewall.org/repos/genshi/trunk"


LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/genshi
	dev-python/pyjon-utils
"
DEPEND="dev-python/setuptools"

