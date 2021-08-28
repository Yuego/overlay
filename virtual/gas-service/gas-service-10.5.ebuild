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

	net-libs/nodejs
	dev-db/postgis
	<dev-python/psycopg-2.9[${PYTHON_USEDEP}]

	>=dev-python/celery-4.0.0[${PYTHON_USEDEP}]
	<dev-python/celery-5
	>=dev-python/flower-0.9.5[${PYTHON_USEDEP}]
"

# Apps
RDEPEND="${RDEPEND}
	dev-python/rarfile[${PYTHON_USEDEP}]

	dev-python/django-wiki[${PYTHON_USEDEP}]
"

# Scrapy
RDEPEND="${RDEPEND}
	dev-python/scrapy[${PYTHON_USEDEP}]
	dev-python/scrapy-djangoitem[${PYTHON_USEDEP}]
	dev-python/scrapy-deltafetch[${PYTHON_USEDEP}]
"

# Libs
RDEPEND="${RDEPEND}
	dev-python/PyMuPDF[${PYTHON_USEDEP}]
	sys-apps/file[python]
	<dev-python/psycopg-2.9[${PYTHON_USEDEP}]

	dev-python/django-downloadview[${PYTHON_USEDEP}]

	>=dev-python/django-cacheops-4.2[${PYTHON_USEDEP}]
	>=dev-python/django-redis-4.11.0[${PYTHON_USEDEP}]

	>=dev-python/django-celery-beat-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/celery-once-3.0.0[${PYTHON_USEDEP}]

	>=dev-python/phonenumbers-8.12.1[${PYTHON_USEDEP}]

	>=dev-python/django-rest-framework-3.11.0[${PYTHON_USEDEP},filter]

	>=dev-python/django-grappelli-2.11.1[${PYTHON_USEDEP}]
	>=dev-python/django-constance-2.6.0[${PYTHON_USEDEP}]
	>=dev-python/django-reversion-3.0.0[${PYTHON_USEDEP}]

	>=dev-python/django-mptt-0.11.0[${PYTHON_USEDEP}]

	>=dev-python/easy-thumbnails-2.7.0[${PYTHON_USEDEP}]

	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/pytils[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.1[${PYTHON_USEDEP}]
	dev-python/user_agent[${PYTHON_USEDEP}]
	dev-python/dawg[${PYTHON_USEDEP}]
	dev-python/vincode[${PYTHON_USEDEP}]
	>=dev-python/django-versatileimagefield-2[${PYTHON_USEDEP}]
	dev-python/img2pdf[${PYTHON_USEDEP}]
	dev-python/openpyxl[${PYTHON_USEDEP}]
	dev-python/secretary[${PYTHON_USEDEP}]
	dev-python/django-object-actions[${PYTHON_USEDEP}]
	>=dev-python/django-import-export-2.0.2[${PYTHON_USEDEP}]
	>=dev-python/num2t4ru-2.0.1[${PYTHON_USEDEP}]

	>=dev-python/django-bitfield-2.0.1[${PYTHON_USEDEP}]
	dev-python/django-maintenance-mode[${PYTHON_USEDEP}]
	dev-python/django-debug-toolbar[${PYTHON_USEDEP}]

	<dev-python/jinja-3
"

# Frontend
RDEPEND="${RDEPEND}
	dev-python/django-webpack[${PYTHON_USEDEP}]
"

# API
RDEPEND="${RDEPEND}
	>=dev-python/bitrix24-0.3.3[${PYTHON_USEDEP}]
"

# ProxyList
RDEPEND="${RDEPEND}
	>dev-python/django-countries-6.1.0[${PYTHON_USEDEP}]
	dev-python/geoip-python[${PYTHON_USEDEP}]
	dev-python/grab[${PYTHON_USEDEP}]
	dev-python/django-bitfield[${PYTHON_USEDEP}]

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
