# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Django Krpano app"
HOMEPAGE="https://bitbucket.org/Yuego/krpano"

EGIT_REPO_URI="git@bitbucket.org:Yuego/krpano.git"
EGIT_BRANCH="develop"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.9[${PYTHON_USEDEP}]
	dev-python/django-v3dlibs[${PYTHON_USEDEP}]
	dev-python/djorm-ext-pgarray[${PYTHON_USEDEP}]
	media-gfx/krpano-bin
	dev-python/six[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
