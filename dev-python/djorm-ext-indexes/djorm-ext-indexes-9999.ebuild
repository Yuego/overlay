# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Indexing support for Array and HStore fields"
HOMEPAGE="https://github.com/Yuego/djorm-ext-indexes"

EGIT_REPO_URI="git://github.com/Yuego/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.3[postgres]
	>=dev-python/djorm-ext-pgarray-0.4.0
	>=dev-python/djorm-ext-expressions-0.4.4
"
DEPEND="dev-python/setuptools"
