# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"
PYTHON_DEPEND="2:2.4:2.6"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

DESCRIPTION="Python client for the Advanced Message Queuing Procotol (AMQP)"
HOMEPAGE="http://code.google.com/p/py-amqplib/"
SRC_URI="http://py-amqplib.googlecode.com/files/${P}.tgz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="examples extras test"

RDEPEND=""
DEPEND="${RDEPEND}"

RESTRICT_PYTHON_ABIS="3.*"

src_test() {
	testing() {
		PYTHONPATH="build-${PYTHON_ABI}/lib" pytest -v
	}
	python_execute_function testing
}

src_install() {
	distutils_src_install

	dodoc docs/*
	if use examples; then
		docinto examples
		dodoc demo/* || die "dodoc failed"
	fi
	if use extras; then
		insinto /usr/share/${PF}
                doins -r extras || die "doins failed"
        fi

}
