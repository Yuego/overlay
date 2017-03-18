# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Reusable workflow library for Django"
HOMEPAGE="http://viewflow.io https://github.com/viewflow/viewflow"

SRC_URI="https://github.com/viewflow/viewflow/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="test"

RDEPEND="
	>=dev-python/django-1.8
	dev-python/pytz
	dev-python/django-material
	
	virtual/python-singledispatch
	>=dev-python/django-fsm-2.0

	test? (
		dev-python/mock
		dev-python/webtest
		dev-python/django-webtest
	)
"
DEPEND="dev-python/setuptools"
