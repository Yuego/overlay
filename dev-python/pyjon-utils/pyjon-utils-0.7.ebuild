# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy2_0 )

inherit eutils distutils-r1

DESCRIPTION="Useful tools library with classes to do singletons, dynamic function pointers..."
HOMEPAGE="https://bitbucket.org/jon1012/pyjon.utils/overview"

SRC_URI="https://bitbucket.org/jon1012/pyjon.utils/get/${PV}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S="${WORKDIR}/jon1012-pyjon.utils-e9012f3086b0"

RDEPEND="
"
DEPEND="dev-python/setuptools"

