# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Django Krpano app"
HOMEPAGE="https://bitbucket.org/Yuego/krpano"

EGIT_REPO_URI="git@bitbucket.org:Yuego/krpano.git"
EGIT_COMMIT="1.0"

LICENSE="as-is"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.5
	dev-python/django-v3dlibs
	dev-python/djorm-ext-pgarray
	dev-python/six
"
DEPEND="dev-python/setuptools"

