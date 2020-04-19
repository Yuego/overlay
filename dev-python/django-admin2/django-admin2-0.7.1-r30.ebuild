# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Extendable, adaptable rewrite of django.contrib.admin"
HOMEPAGE="https://github.com/pydanny/django-admin2"

EGIT_REPO_URI="https://github.com/jazzband/django-admin2.git"
EGIT_COMMIT="606118cb04aa7dccad55c42773ae570eac8239aa"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="-test"

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
	>=dev-python/django-braces-1.13.0[${PYTHON_USEDEP}]
	>=dev-python/django-extra-views-0.11.0[${PYTHON_USEDEP}]
	>=dev-python/django-rest-framework-3.8.2[${PYTHON_USEDEP}]
	>=dev-python/django-floppyforms-1.2[${PYTHON_USEDEP}]
	>=dev-python/django-filter-1.1.0[${PYTHON_USEDEP}]
	>=dev-python/future-0.15.2[${PYTHON_USEDEP}]
	>=dev-python/pytz-2016.4[${PYTHON_USEDEP}]
	test? (
		dev-python/pytest[${PYTHON_USEDEP}]
	)
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/${P/_/}"
