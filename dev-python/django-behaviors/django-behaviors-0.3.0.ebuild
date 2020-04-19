# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Easily integrate common behaviors for Django models"
HOMEPAGE="https://github.com/audiolion/django-behaviors"

EGIT_REPO_URI="git://github.com/audiolion/django-behaviors.git"
EGIT_COMMIT="19080940c7a6a5ca30d52da4581a0f1bdff261a0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	dev-python/django[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
