# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Extendable, adaptable rewrite of django.contrib.admin"
HOMEPAGE="https://github.com/pydanny/django-admin2"

EGIT_REPO_URI="git://github.com/pydanny/django-admin2.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.5[${PYTHON_USEDEP}]
	>=dev-python/django-braces-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/django-extra-views-0.6.2[${PYTHON_USEDEP}]
	>=dev-python/django-rest-framework-2.3.3[${PYTHON_USEDEP}]
	>=dev-python/django-floppyforms-1.1[${PYTHON_USEDEP}]
	>=dev-python/django-filter-0.6[${PYTHON_USEDEP}]
	>=dev-python/django-crispy-forms-1.3.2[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
