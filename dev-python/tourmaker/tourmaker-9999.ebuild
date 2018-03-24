# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Django TourMaker app"
HOMEPAGE="https://bitbucket.org/Yuego/tourmaker"

EGIT_REPO_URI="git@bitbucket.org:Yuego/tourmaker.git"
#EGIT_BRANCH="develop"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.9[${PYTHON_USEDEP}]
	dev-python/krpano[${PYTHON_USEDEP}]
	media-gfx/krpano-bin
	dev-python/six[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
