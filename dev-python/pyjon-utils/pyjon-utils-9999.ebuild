# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3} pypy pypy3 )

inherit eutils distutils-r1 mercurial

DESCRIPTION="Useful tools library with classes to do singletons, dynamic function pointers..."
HOMEPAGE="https://bitbucket.org/jon1012/pyjon.utils/overview"

EHG_REPO_URI="https://bitbucket.org/jon1012/pyjon.utils"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
"
DEPEND="dev-python/setuptools"
