# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="django-webtest provides integration of Ian Bicking's WebTest (http://pythonpaste.org/webtest/) with django's testing framework. https://pypi.python.org/pypi/django-webtest/"
HOMEPAGE="https://github.com/django-webtest/django-webtest"

SRC_URI="https://github.com/django-webtest/django-webtest/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.7
	>=dev-python/webtest-1.3.3
"
DEPEND="dev-python/setuptools"
