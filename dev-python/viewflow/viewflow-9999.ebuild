# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Reusable workflow library for Django"
HOMEPAGE="http://viewflow.io https://github.com/viewflow/viewflow"

EGIT_REPO_URI="git://github.com/viewflow/viewflow.git"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS=""
IUSE="test"

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
	>=dev-python/django-filter-1.0[${PYTHON_USEDEP}]

	test? (
		dev-python/mock[${PYTHON_USEDEP}]
		dev-python/webtest[${PYTHON_USEDEP}]
		dev-python/django-webtest[${PYTHON_USEDEP}]
	)
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
