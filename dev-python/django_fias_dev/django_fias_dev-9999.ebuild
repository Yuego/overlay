# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{8..13} pypy3 )

inherit distutils-r1

DESCRIPTION="Django Fias Dev Package"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="mysql"

RDEPEND="
	>=dev-python/django-3.2[${PYTHON_USEDEP}]
	>=dev-python/django-select2-8.0.0[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/zeep[${PYTHON_USEDEP}]
	>=dev-python/dbfread-2.0.7[${PYTHON_USEDEP}]
	dev-python/tqdm[${PYTHON_USEDEP}]
	mysql? ( dev-python/pymysql[${PYTHON_USEDEP}] )
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


