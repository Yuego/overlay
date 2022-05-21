# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION=""
HOMEPAGE="https://github.com/django-getpaid/django-plans"

EGIT_REPO_URI="https://github.com/django-getpaid/django-plans.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-countries-4.5[${PYTHON_USEDEP}]
	>=dev-python/pytz-2017.2[${PYTHON_USEDEP}]

	>=dev-python/django-ordered-model-1.4.1[${PYTHON_USEDEP}]

	dev-python/python-stdnum[${PYTHON_USEDEP}]

	>=dev-python/django-next-url-mixin-0.1.0[${PYTHON_USEDEP}]

	dev-python/suds-community[${PYTHON_USEDEP}]

	dev-python/django-sequences[${PYTHON_USEDEP}]

	>=dev-python/django-swappable-models-1.3.0[${PYTHON_USEDEP}]

	dev-python/six[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
