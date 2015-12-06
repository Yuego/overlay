# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{3_3,3_4,3_5} pypy{2_0,3} )

inherit eutils distutils-r1

DESCRIPTION="Reusable workflow library for Django http://viewflow.io"
HOMEPAGE="https://github.com/viewflow/viewflow"

SRC_URI="https://github.com/viewflow/viewflow/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="test"

S="$WORKDIR/viewflow-$PV"

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

