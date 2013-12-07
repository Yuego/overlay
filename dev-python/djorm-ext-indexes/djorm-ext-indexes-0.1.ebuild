# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Indexing support for Array and HStore fields"
HOMEPAGE="https://github.com/Yuego/djorm-ext-indexes"

SRC_URI="https://github.com/Yuego/djorm-ext-indexes/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.3[postgres]
	>=dev-python/djorm-ext-pgarray-0.4.0
	>=dev-python/djorm-ext-expressions-0.4.4

"
DEPEND="dev-python/setuptools"


