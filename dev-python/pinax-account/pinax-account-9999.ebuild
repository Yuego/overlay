# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{6..10} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="provides a Django project for dealing with user accounts"
HOMEPAGE="https://github.com/pinax/django-user-accounts"

EGIT_REPO_URI="https://github.com/pinax/django-user-accounts.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DISTUTILS_USE_SETUPTOOLS=pyproject.toml

RDEPEND="
	>=dev-python/django-2.2[${PYTHON_USEDEP}]
	>=dev-python/django-appconf-1.0.4[${PYTHON_USEDEP}]
	>=dev-python/pytz-2020.4[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
