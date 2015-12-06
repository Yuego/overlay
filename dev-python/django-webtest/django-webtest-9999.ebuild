# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy{2_0,3} )

inherit distutils-r1 git-r3

DESCRIPTION="django-webtest provides integration of Ian Bicking's WebTest (http://pythonpaste.org/webtest/) with django's testing framework. https://pypi.python.org/pypi/django-webtest/"
HOMEPAGE="https://github.com/django-webtest/django-webtest"

EGIT_REPO_URI="git://github.com/django-webtest/django-webtest.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.7
	>=dev-python/webtest-1.3.3
"
DEPEND="dev-python/setuptools"

