# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Expressions module of django orm extensions package"
HOMEPAGE="https://github.com/niwibe/djorm-ext-expressions"

SRC_URI="https://github.com/niwibe/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/djorm-ext-core-0.4.1
"
DEPEND="dev-python/setuptools"


