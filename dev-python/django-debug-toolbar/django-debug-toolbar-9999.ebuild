# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="A configurable set of panels that display various debug information about the current request/response."
HOMEPAGE="https://github.com/django-debug-toolbar/django-debug-toolbar"
EGIT_REPO_URI="https://github.com/django-debug-toolbar/django-debug-toolbar.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.4.2
    <dev-python/django-1.7
    dev-python/python-sqlparse
"
DEPEND="${RDEPEND}"

DOCS="LICENSE README.rst"

pkg_postinst() {
	elog
	elog "Middleware class placed in:"
	elog "  'debug_toolbar.middleware.DebugToolbarMiddleware'"
	elog "Toolbar panels palced in:"
	elog "  'debug_toolbar.panels.*'"
	elog
}

src_prepare() {
    sed -i "s#exclude=('tests'#exclude=('tests','tests.*'#g" setup.py
    distutils-r1_src_prepare
}

