# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Django Krpano app"
HOMEPAGE="https://bitbucket.org/Yuego/krpano"

EGIT_REPO_URI="git@bitbucket.org:Yuego/krpano.git"
EGIT_BRANCH="develop"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.5
	dev-python/django-v3dlibs
	dev-python/djorm-ext-pgarray
	dev-python/six
"
DEPEND="dev-python/setuptools"
