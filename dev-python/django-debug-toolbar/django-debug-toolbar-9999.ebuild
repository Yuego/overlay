# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=4

EGIT_REPO_URI="https://github.com/django-debug-toolbar/django-debug-toolbar.git"

inherit distutils eutils git

DESCRIPTION="A configurable set of panels that display various debug information about the current request/response."
HOMEPAGE="https://github.com/django-debug-toolbar/django-debug-toolbar"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

DOCS="AUTHORS LICENSE README.rst"

PYTHON_MODNAME="debug_toolbar"



#src_compile() {
#	return
#}

#src_install() {
#	distutils_python_version
#
#	site_pkgs="$(python_get_sitedir)"
#	export PYTHONPATH="${PYTHONPATH}:${D}/${site_pkgs}"
#	insinto ${site_pkgs}
#	doins -r debug_toolbar
#
#	dodoc ${DOCS}
#}

pkg_postinst() {
	elog
	elog "Middleware class placed in:"
	elog "  'debug_toolbar.middleware.DebugToolbarMiddleware'"
	elog "Toolbar panels palced in:"
	elog "  'debug_toolbar.panels.*'"
	elog


}
