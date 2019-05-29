# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=6
PYTHON_COMPAT=( python3_{4,5,6} pypy )

inherit distutils-r1

LICENSE=""

SRC_URI=""
DESCRIPTION="Gas Service Meta"
HOMEPAGE=""
SLOT="0"
KEYWORDS="x86 amd64"
IUSE="scrapy"

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
	<dev-python/django-2.2
"

# Servers
RDEPEND="${RDEPEND}
	dev-db/postgresql:*[server]
	www-servers/nginx:0
	www-servers/uwsgi[python]

	net-libs/nodejs
	dev-db/postgis

	dev-python/celery[${PYTHON_USEDEP}]
	dev-python/flower[${PYTHON_USEDEP}]
"

# Apps
RDEPEND="${RDEPEND}
	dev-python/rarfile[${PYTHON_USEDEP}]
"

# Scrapy
RDEPEND="${RDEPEND}
	dev-python/scrapy[${PYTHON_USEDEP}]
	dev-python/scrapy-djangoitem[${PYTHON_USEDEP}]
	dev-python/scrapy-deltafetch[${PYTHON_USEDEP}]
"

# Libs
RDEPEND="${RDEPEND}
	dev-python/psycopg[${PYTHON_USEDEP}]

	dev-python/django-downloadview[${PYTHON_USEDEP}]

	dev-python/django-cacheops[${PYTHON_USEDEP}]
	dev-python/django-redis[${PYTHON_USEDEP}]

	dev-python/django-celery-beat[${PYTHON_USEDEP}]
	dev-python/celery-once[${PYTHON_USEDEP}]

	dev-python/phonenumbers[${PYTHON_USEDEP}]

	dev-python/django-rest-framework[${PYTHON_USEDEP},filter]

	>=dev-python/django-grappelli-2.11.1[${PYTHON_USEDEP}]
	dev-python/django-constance[${PYTHON_USEDEP}]
	>=dev-python/django-reversion-2.0.0[${PYTHON_USEDEP}]

	>=dev-python/django-mptt-0.9.0[${PYTHON_USEDEP}]

	dev-python/easy-thumbnails[${PYTHON_USEDEP}]

	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/pytils[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.1[${PYTHON_USEDEP}]
	dev-python/user_agent[${PYTHON_USEDEP}]
	dev-python/dawg[${PYTHON_USEDEP}]
	dev-python/vincode[${PYTHON_USEDEP}]
	dev-python/django-versatileimagefield[${PYTHON_USEDEP}]
	dev-python/img2pdf[${PYTHON_USEDEP}]
	dev-python/openpyxl[${PYTHON_USEDEP}]
	dev-python/secretary[${PYTHON_USEDEP}]
	dev-python/django-object-actions[${PYTHON_USEDEP}]
	>=dev-python/django-import-export-1.0.1-r3[${PYTHON_USEDEP}]
	>=dev-python/num2t4ru-2.0.1[${PYTHON_USEDEP}]
"

# Frontend
RDEPEND="${RDEPEND}
	dev-python/django-webpack[${PYTHON_USEDEP}]
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
