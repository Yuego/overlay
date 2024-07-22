# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..12} pypy3 )

inherit distutils-r1

DESCRIPTION="API key permissions for the Django REST Framework"
HOMEPAGE="https://github.com/florimondmanca/djangorestframework-api-key"

SRC_URI="https://github.com/florimondmanca/djangorestframework-api-key/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/django-rest-framework-3.14[${PYTHON_USEDEP}]

	app-crypt/argon2[${PYTHON_USEDEP}]
	dev-python/bcrypt[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
