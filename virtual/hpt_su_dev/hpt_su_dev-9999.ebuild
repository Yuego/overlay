# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=8
PYTHON_COMPAT=( python3_{8..13} pypy3 )

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
"

# Servers
RDEPEND="${RDEPEND}
	dev-db/postgresql:*[server]
	www-servers/nginx
	www-servers/uwsgi[python,${PYTHON_USEDEP}]

"

# Apps
RDEPEND="${RDEPEND}
	dev-python/tech_docs_dev[${PYTHON_USEDEP}]
	dev-python/django-constance[${PYTHON_USEDEP}]
	dev-python/django-templated-email[${PYTHON_USEDEP}]
"

# Libs
RDEPEND="${RDEPEND}
	dev-python/psycopg:0[${PYTHON_USEDEP}]
	dev-python/django-cacheops[${PYTHON_USEDEP}]
	dev-python/django-maintenance-mode[${PYTHON_USEDEP}]
	dev-python/django-redis[${PYTHON_USEDEP}]
	dev-python/hiredis[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]

	dev-python/vk_api[${PYTHON_USEDEP}]

	dev-python/django-appconf[${PYTHON_USEDEP}]
	dev-python/django-money[${PYTHON_USEDEP}]
	dev-python/django-treebeard[${PYTHON_USEDEP}]

	>=dev-python/django-phonenumber-field-8.0.0[${PYTHON_USEDEP}]
	>=dev-python/django-better-admin-arrayfield-1.4.1[${PYTHON_USEDEP}]

	dev-python/utm-tracker[${PYTHON_USEDEP}]

	dev-python/shortuuid[${PYTHON_USEDEP}]
"

# Frontend
RDEPEND="${RDEPEND}
"

# API
RDEPEND="${RDEPEND}
	app-crypt/certbot[${PYTHON_USEDEP}]
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
