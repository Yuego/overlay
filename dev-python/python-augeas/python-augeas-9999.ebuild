# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/python-augeas/python-augeas-0.4.0.ebuild,v 1.1 2011/05/11 16:00:41 matsuu Exp $

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_2,3_3} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Python bindings for Augeas"
HOMEPAGE="http://augeas.net/"

EGIT_REPO_URI="git://github.com/hercules-team/python-augeas.git"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	>=app-admin/augeas-1.1.0
"
RDEPEND="${DEPEND}"

DOCS="AUTHORS README.txt"

src_test() {
	cd test
	testing() {
		"$(PYTHON)" test_augeas.py
	}
	python_execute_function testing
}
