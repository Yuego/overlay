# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy2_0 )

inherit eutils distutils-r1 git-2

DESCRIPTION="Lite and powerful SphinxQL query constructor"
HOMEPAGE="https://github.com/semirook/sphinxit"

EGIT_REPO_URI="git://github.com/semirook/sphinxit.git"
EGIT_COMMIT="957c9725ee03eb5e3c28009c9484fd68105d8319"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=app-misc/sphinx-2.0.6
	dev-python/six
	>=dev-python/oursql-0.9.3
"
DEPEND="dev-python/setuptools"

