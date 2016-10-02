# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_5,2_6,2_7} pypy pypy3 )

inherit eutils distutils-r1

DESCRIPTION="Oursql is a new set of MySQL bindings for python 2.4+, including python 3.x"
HOMEPAGE="http://pythonhosted.org/oursql/"

SRC_URI="https://launchpad.net/oursql/trunk/${PV}/+download/${P}.zip"

LICENSE="BSD"
SLOT="2"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-db/mysql-4.1.2"

DEPEND="
	dev-python/setuptools
	dev-python/cython
"
