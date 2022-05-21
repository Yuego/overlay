# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Django Swappable Models - No longer only for auth.User!"
HOMEPAGE="https://github.com/openwisp/django-swappable-models"

EGIT_REPO_URI="https://github.com/openwisp/django-swappable-models.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/django[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
