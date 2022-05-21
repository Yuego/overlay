# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Universal payment handling for Django"
HOMEPAGE="https://github.com/jazzband/django-payments"

EGIT_REPO_URI="https://github.com/jazzband/django-payments.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-2.2[${PYTHON_USEDEP}]
	>=dev-python/requests-1.2.0[${PYTHON_USEDEP}]
	>=dev-python/django-phonenumber-field-6.0.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
