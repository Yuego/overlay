# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{6..10} pypy3 )

inherit distutils-r1

DESCRIPTION="Django's class-based generic views are awesome, let's have more of them."
HOMEPAGE="https://github.com/AndrewIngram/django-extra-views"

SRC_URI="https://github.com/AndrewIngram/django-extra-views/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="-test"

RDEPEND="
	>=dev-python/django-2.2[${PYTHON_USEDEP}]

	test? (
		>=dev-python/coverage-3.7.1[${PYTHON_USEDEP}]
		>=dev-python/django-nose-1.2[${PYTHON_USEDEP}]
	)
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
