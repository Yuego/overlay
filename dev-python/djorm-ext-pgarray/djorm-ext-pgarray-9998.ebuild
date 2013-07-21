# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_3} pypy{1_9,2_0} )

inherit distutils-r1 git-2

DESCRIPTION="PostgreSQL native array fields extension for Django."
HOMEPAGE="https://github.com/niwibe/djorm-ext-pgarray"

EGIT_REPO_URI="git://github.com/niwibe/${PN}.git"
EGIT_COMMIT="303028db0d994c68845b81c15525c6a0442f5b8a"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.3[postgres]
"
DEPEND="dev-python/setuptools"


