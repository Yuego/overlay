# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3} pypy2_0 )

inherit distutils-r1

DESCRIPTION="PostgreSQL HStore module integration for django orm."
HOMEPAGE="https://github.com/niwibe/djorm-ext-hstore"

SRC_URI="https://github.com/niwibe/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/djorm-ext-core-0.4.0
	>=dev-python/djorm-ext-expressions-0.4.0
"
DEPEND="dev-python/setuptools"


