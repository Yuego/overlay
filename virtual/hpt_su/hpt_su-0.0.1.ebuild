# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1

LICENSE=""

SRC_URI=""
DESCRIPTION="Gas Service Meta"
HOMEPAGE=""
SLOT="0"
KEYWORDS="x86 amd64"
IUSE="scrapy"

RDEPEND="
	>=dev-python/django-3.0[${PYTHON_USEDEP}]
	<dev-python/django-3.1
"

# Servers
RDEPEND="${RDEPEND}
	dev-db/postgresql:*[server]
	www-servers/nginx:0
	www-servers/uwsgi[python]

"

# Apps
RDEPEND="${RDEPEND}
	dev-python/tech_docs[${PYTHON_USEDEP}]
"

# Libs
RDEPEND="${RDEPEND}
"

# Frontend
RDEPEND="${RDEPEND}
"

# API
RDEPEND="${RDEPEND}
"

# ProxyList
RDEPEND="${RDEPEND}

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
