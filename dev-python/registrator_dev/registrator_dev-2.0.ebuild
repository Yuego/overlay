# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )

inherit distutils-r1

LICENSE=""

SRC_URI=""
DESCRIPTION="Registrator Dev Meta"
HOMEPAGE=""
SLOT="0"
KEYWORDS="x86 amd64"
IUSE="+celery +scrapy"

RDEPEND="
	>=dev-python/django-5.0[${PYTHON_USEDEP}]
"

# Servers
RDEPEND="${RDEPEND}
	dev-db/postgresql:*[server]
	www-servers/nginx:0
	www-servers/uwsgi[python]

	net-libs/nodejs
	dev-db/postgis
	dev-python/psycopg:0[${PYTHON_USEDEP}]

"

# Apps
RDEPEND="${RDEPEND}
	dev-python/rarfile[${PYTHON_USEDEP}]
	app-admin/apache-tools
"

# Celery
RDEPEND="${RDEPEND}
	celery? (
		>=dev-python/celery-5.4.0[${PYTHON_USEDEP}]
		>=dev-python/django-celery-beat-2.0.0[${PYTHON_USEDEP}]
		>=dev-python/celery-once-3.0.0[${PYTHON_USEDEP}]
		>=dev-python/flower-0.9.5[${PYTHON_USEDEP}]
	)
"


# Scrapy
RDEPEND="${RDEPEND}
	scrapy? (
		dev-python/scrapy[${PYTHON_USEDEP}]
		dev-python/scrapy-deltafetch[${PYTHON_USEDEP}]
		dev-python/scrapy-djangoitem[${PYTHON_USEDEP}]
		>=dev-python/user_agent-0.1.10-r1[${PYTHON_USEDEP}]
	)
"

# Libs
RDEPEND="${RDEPEND}
	dev-python/PyMuPDF[${PYTHON_USEDEP}]
	sys-apps/file[python]

	dev-python/django-downloadview[${PYTHON_USEDEP}]
	>=dev-python/property-mapper-0.3[${PYTHON_USEDEP}]

	>=dev-python/django-cacheops-4.2[${PYTHON_USEDEP}]
	>=dev-python/django-redis-4.11.0[${PYTHON_USEDEP}]

	>=dev-python/phonenumbers-8.13.49[${PYTHON_USEDEP}]

	>=dev-python/django-rest-framework-3.14.0[${PYTHON_USEDEP},filter]

	>=dev-python/django-grappelli-2.11.1[${PYTHON_USEDEP}]
	dev-python/django-constance[${PYTHON_USEDEP}]
	>=dev-python/django-reversion-3.0.0[${PYTHON_USEDEP}]

	>=dev-python/django-mptt-0.13.0[${PYTHON_USEDEP}]

	>=dev-python/easy-thumbnails-2.7.0[${PYTHON_USEDEP}]
	>=dev-python/django-import-export-4.3.1[${PYTHON_USEDEP}]

	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/pytils[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.1[${PYTHON_USEDEP}]
	dev-python/dawg[${PYTHON_USEDEP}]
	dev-python/vincode[${PYTHON_USEDEP}]
	>=dev-python/django-versatileimagefield-2[${PYTHON_USEDEP}]
	dev-python/img2pdf[${PYTHON_USEDEP}]
	dev-python/openpyxl[${PYTHON_USEDEP}]
	>=dev-python/secretary-0.2.19-r1[${PYTHON_USEDEP}]
	dev-python/django_object_actions[${PYTHON_USEDEP}]
	>=dev-python/num2t4ru-2.0.1[${PYTHON_USEDEP}]

	>=dev-python/django-bitfield-2.2.0-r1[${PYTHON_USEDEP}]
	dev-python/django-maintenance-mode[${PYTHON_USEDEP}]
	dev-python/django-debug-toolbar[${PYTHON_USEDEP}]

	dev-python/jinja2[${PYTHON_USEDEP}]
"

# Frontend
RDEPEND="${RDEPEND}
	dev-python/django-webpack[${PYTHON_USEDEP}]
"

# API
RDEPEND="${RDEPEND}
"

# ProxyList
RDEPEND="${RDEPEND}
	>dev-python/django-countries-6.1.0[${PYTHON_USEDEP}]
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
