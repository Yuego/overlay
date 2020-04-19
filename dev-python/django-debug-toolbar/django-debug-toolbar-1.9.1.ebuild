# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="A configurable set of panels that display various debug information about the current request/response."
HOMEPAGE="https://github.com/django-debug-toolbar/django-debug-toolbar"
MY_PV="${PV/_/-}"
MY_P="${PN}-${MY_PV}"
SRC_URI="https://github.com/django-debug-toolbar/django-debug-toolbar/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"
LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ia64 ppc ppc64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
	dev-python/python-sqlparse[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"

DOCS="LICENSE README.rst"

S="$WORKDIR/$MY_P"
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
