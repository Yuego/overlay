# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=8
PYTHON_COMPAT=( python3_{10..14} pypy3 )
DISTUTILS_USE_PEP517=no

inherit distutils-r1

LICENSE="MIT"

SRC_URI=""
DESCRIPTION="Gas Service Meta"
HOMEPAGE=""
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

RDEPEND="
	=dev-python/hpt_su_dev-${PV}[${PYTHON_USEDEP}]

	<dev-python/hpt_accs-0.2.0[${PYTHON_USEDEP}]
	<dev-python/hpt_pay-0.1.0[${PYTHON_USEDEP}]
	<dev-python/hpt_orgs-0.1.0[${PYTHON_USEDEP}]

	<dev-python/tech_docs-4.0.0[${PYTHON_USEDEP}]
"

DEPEND=""

S="${WORKDIR}"

src_prepare(){
	eapply_user
}

src_compile(){
	echo ''
}

src_install(){
	echo ''
}
