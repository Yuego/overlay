# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=8
PYTHON_COMPAT=( python3_{8..11} pypy3 )

inherit distutils-r1

LICENSE=""

SRC_URI=""
DESCRIPTION="Gas Service Meta"
HOMEPAGE=""
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

RDEPEND="
	virtual/hpt_su_dev
	dev-python/tech_docs[${PYTHON_USEDEP}]
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
