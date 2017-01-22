# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=6

LICENSE=""

SRC_URI=""
DESCRIPTION="Gas Service Meta"
HOMEPAGE=""
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

RDEPEND="
	dev-python/django
	dev-python/scrapy
"

# Servers
RDEPEND="${RDEPEND}
	dev-db/postgresql:*[server]
	www-servers/nginx:0
	www-servers/uwsgi[python]

	net-libs/nodejs
	dev-db/postgis
"

# Libs
RDEPEND="${RDEPEND}

	dev-python/py3o-template
	dev-python/py3o-types

	dev-python/django-downloadview

	dev-python/django-cacheops
	dev-python/django-redis

	dev-python/phonenumbers

	dev-python/django-rest-framework

	dev-python/django-grappelli
	dev-python/django-constance
	>=dev-python/django-reversion-2.0.0

	dev-python/pyyaml
	dev-python/pytils
	>=dev-python/python-dateutil-2.1
	dev-python/user_agent
	dev-python/dawg
	dev-python/vincode
	dev-python/scrapy-djangoitem
	dev-python/scrapy-deltafetch
"
DEPEND=""