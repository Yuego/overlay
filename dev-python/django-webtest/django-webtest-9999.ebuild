# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="django-webtest provides integration of Ian Bicking's WebTest (http://pythonpaste.org/webtest/) with django's testing framework. https://pypi.python.org/pypi/django-webtest/"
HOMEPAGE="https://github.com/django-webtest/django-webtest"

EGIT_REPO_URI="git://github.com/django-webtest/django-webtest.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
	>=dev-python/webtest-1.3.3[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
