# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 git-r3

DESCRIPTION="A transparent layer for full-text search using Sphinx and Django"
HOMEPAGE="https://github.com/Yuego/django-sphinx"

EGIT_REPO_URI="https://github.com/Yuego/django-sphinx.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	>=app-misc/sphinx-2.0.2[id64,stemmer]
	dev-python/mysql-python
	dev-python/six
"
DEPEND="dev-python/setuptools"

