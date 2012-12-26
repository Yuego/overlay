# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-misc/sphinx/sphinx-2.0.4.ebuild,v 1.5 2012/06/17 16:47:22 armin76 Exp $

EAPI=4
inherit eutils distutils

# This has been added by Gentoo, to explicitly version libstemmer.
# It is the date that http://snowball.tartarus.org/dist/libstemmer_c.tgz was
# fetched.

MY_P="sphinx-${PV}-release"

HOMEPAGE="http://www.sphinxsearch.com/"
SRC_URI="http://sphinxsearch.com/files/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha amd64 ~arm ~ia64 ~sparc x86 ~amd64-linux ~ppc-macos ~x86-macos ~sparc-solaris ~sparc64-solaris"
IUSE=""

RDEPEND="~app-misc/sphinx-${PV}"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="sphinxapi"

S=${WORKDIR}/${MY_P}

src_prepare() {
    mv api/sphinxapi.py ..
    rm * -r
    mkdir sphinxapi
    touch sphinxapi/__init__.py
    mv ../sphinxapi.py sphinxapi
    cp ${FILESDIR}/setup.py .
}

