# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Reusable workflow library for Django"
HOMEPAGE="http://viewflow.io https://github.com/viewflow/viewflow"

EGIT_REPO_URI="git://github.com/viewflow/viewflow.git"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS=""
IUSE="test"

RDEPEND="
	>=dev-python/django-1.6
	virtual/python-singledispatch
	>=dev-python/django-fsm-2.0
	>=dev-python/django-filter-0.10.0
	
	test? (
		dev-python/mock
		dev-python/webtest
		dev-python/django-webtest
	)
"
DEPEND="dev-python/setuptools"
