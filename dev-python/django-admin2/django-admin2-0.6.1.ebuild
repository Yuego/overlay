# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Extendable, adaptable rewrite of django.contrib.admin"
HOMEPAGE="https://github.com/pydanny/django-admin2"

MY_PV="${PV/_/}"
SRC_URI="https://github.com/pydanny/django-admin2/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="-test"

RDEPEND="
	>=dev-python/django-1.6
	>=dev-python/django-braces-1.3.0
	>=dev-python/django-extra-views-0.6.5
	>=dev-python/django-rest-framework-2.4.4
	>=dev-python/django-floppyforms-1.2
	>=dev-python/django-filter-0.7
	>=dev-python/django-crispy-forms-1.3.2
	>=dev-python/pytz-2014.7
	test? (
		dev-python/pytest	
	)
"
DEPEND="dev-python/setuptools"

S="${WORKDIR}/${P/_/}"
