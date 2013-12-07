# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit eutils distutils-r1 git-2

DESCRIPTION="Sphinx RT Index backend for Haystack"
HOMEPAGE="https://github.com/btimby/sphinx-haystack"

EGIT_REPO_URI="https://github.com/Yuego/sphinx-haystack.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	app-misc/sphinx
"
DEPEND="dev-python/setuptools"


