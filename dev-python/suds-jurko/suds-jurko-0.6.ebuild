# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/suds/suds-0.4-r1.ebuild,v 1.2 2013/10/04 16:20:09 mgorny Exp $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} )

inherit distutils-r1

DESCRIPTION="Lightweight SOAP client"
HOMEPAGE="https://fedorahosted.org/suds/ http://pypi.python.org/pypi/suds"
SRC_URI="https://bitbucket.org/jurko/suds/downloads/${P}.tar.bz2"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="doc"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	doc? ( dev-python/epydoc[${PYTHON_USEDEP}] )"
RDEPEND=""

src_prepare(){
	rm tests -r
}

python_compile_all() {
	if use doc; then
		epydoc -n "Suds - ${DESCRIPTION}" -o doc suds || die
	fi
}

python_install_all() {
	use doc && local HTML_DOCS=( doc/. )
	distutils-r1_python_install_all
}
