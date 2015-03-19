# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{3_3,3_4} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Reusable workflow library for Django"
HOMEPAGE="http://viewflow.io"

EGIT_REPO_URI="git://github.com/viewflow/viewflow.git"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS=""
IUSE="-test"

RDEPEND="
	>=dev-python/django-1.6
	>=dev-python/singledispatch-3.0
	>=dev-python/django-fsm-2.0
	test? (
		dev-python/mock
		dev-python/webtest
		dev-python/django-webtest
	)
		
	
"
DEPEND="dev-python/setuptools"

