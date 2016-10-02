# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Django's class-based generic views are awesome, let's have more of them."
HOMEPAGE="https://github.com/AndrewIngram/django-extra-views"

SRC_URI="https://github.com/AndrewIngram/django-extra-views/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="-test"

RDEPEND="
	>=dev-python/django-1.3
	>=dev-python/six-1.5.2

	test? (	
		>=dev-python/coverage-3.7.1
		>=dev-python/django-nose-1.2
	)
"
DEPEND="dev-python/setuptools"

