# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_3} pypy{1_9,2_0} )

inherit distutils-r1

DESCRIPTION="Extendable, adaptable rewrite of django.contrib.admin"
HOMEPAGE="https://github.com/pydanny/django-admin2"

SRC_URI="https://github.com/pydanny/django-admin2/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.5
	>=dev-python/django-braces-1.0.0
	>=dev-python/django-extra-views-0.6.2
	>=dev-python/django-rest-framework-2.3.3
	>=dev-python/django-floppyforms-1.1
	>=dev-python/django-filter-0.6
	>=dev-python/django-crispy-forms-1.3.2
"
DEPEND="dev-python/setuptools"


