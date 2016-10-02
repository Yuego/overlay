# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Simple PostgreSQL HStore editor"
HOMEPAGE="https://github.com/Yuego/djorm-hstore-editor"

SRC_URI="https://github.com/Yuego/djorm-hstore-editor/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>dev-python/djorm-ext-hstore-0.4.3
"
DEPEND="dev-python/setuptools"
