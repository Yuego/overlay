# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 subversion

DESCRIPTION="Generic tagging application for Django"
HOMEPAGE="http://code.google.com/p/django-pyodbc/"

ESVN_REPO_URI="http://django-pyodbc.googlecode.com/svn/trunk/"

LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

src_unpack() {
	subversion_src_unpack
	cd ./django-pyodbc-${PV}
	epatch ${FILESDIR}/asp.patch
}
