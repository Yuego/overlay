# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Core module of django orm extensions package."
HOMEPAGE="https://github.com/niwibe/djorm-ext-core"

SRC_URI="https://github.com/niwibe/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.3[postgres]
"
DEPEND="dev-python/setuptools"


