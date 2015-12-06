# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{3_3,3_4,3_5} pypy{2_0,3} )

inherit eutils distutils-r1 git-r3

DESCRIPTION="Reusable workflow library for Django http://viewflow.io"
HOMEPAGE="https://github.com/viewflow/viewflow"

EGIT_REPO_URI="git://github.com/Yuego/viewflow.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE="test"

RDEPEND="
	>=dev-python/django-1.7
	>=dev-python/django-fsm-2.0
	>=dev-python/django-filter-0.10.0

	dev-python/singledispatch
	dev-python/mock

	test? (
		dev-python/django-webtest
		dev-python/webtest
	)
"
DEPEND="dev-python/setuptools"

