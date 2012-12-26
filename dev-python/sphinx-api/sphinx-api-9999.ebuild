# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-misc/sphinx/sphinx-2.0.6.ebuild,v 1.3 2012/12/17 15:51:15 ago Exp $

EAPI=4
inherit eutils distutils subversion

DESCRIPTION="Sphinx Pithon API package"
HOMEPAGE="http://www.sphinxsearch.com/"
ESVN_REPO_URI="http://sphinxsearch.googlecode.com/svn/trunk/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="app-misc/sphinx"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="sphinxapi"

src_prepare() {
	mv api/sphinxapi.py ..
	rm * -r
	mkdir sphinxapi
	touch sphinxapi/__init__.py
	mv ../sphinxapi.py sphinxapi
	cp ${FILESDIR}/setup.py .
}
