# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{10..14} pypy3 )
DISTUTILS_USE_PEP517=no

inherit distutils-r1

DESCRIPTION="Web Server Common Apps Meta"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="amd64"

DEPEND="
	dev-db/postgresql:*[server]
	www-servers/nginx:mainline
	www-servers/uwsgi[python,${PYTHON_USEDEP}]
	net-libs/nodejs
	dev-db/postgis

	dev-python/psycopg:0[${PYTHON_USEDEP}]
	dev-python/hiredis[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"
BDEPEND=""

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

