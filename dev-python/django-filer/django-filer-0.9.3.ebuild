# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-misc/sphinx/sphinx-2.0.4.ebuild,v 1.5 2012/06/17 16:47:22 armin76 Exp $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1

# This has been added by Gentoo, to explicitly version libstemmer.
# It is the date that http://snowball.tartarus.org/dist/libstemmer_c.tgz was
# fetched.

DESCRIPTION="File and Image Management Application for django"
HOMEPAGE="https://github.com/stefanfoulis/django-filer/wiki"
SRC_URI="https://github.com/stefanfoulis/django-filer/archive/${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~ia64 ~sparc ~x86 ~amd64-linux ~ppc-macos ~x86-macos ~sparc-solaris ~sparc64-solaris"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	dev-python/django-nested-sets
	dev-python/django-easy-thumbnails
	>=dev-python/django-polymorphic-0.2
"
DEPEND="dev-python/setuptools"

S=${WORKDIR}/${MY_P}

src_prepare() {
    mv api/sphinxapi.py ..
    rm * -r
    mkdir sphinxapi
    touch sphinxapi/__init__.py
    mv ../sphinxapi.py sphinxapi
    cp ${FILESDIR}/setup.py .
}

