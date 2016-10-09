# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=6

LICENSE="MIT"

SRC_URI=""
DESCRIPTION="sk3d meta"
HOMEPAGE="http://sk3d.ru"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE="debug imagemagick"

RDEPEND="dev-python/django[postgres]"

# Servers
RDEPEND="${RDEPEND}
	dev-db/postgresql-server
	dev-db/postgis
	www-servers/nginx
	www-servers/uwsgi[python]
"

# Libs
RDEPEND="${RDEPEND}
	dev-python/sorl-thumbnail[redis]
	dev-python/south

	dev-python/django-pymorphy2
"

# Utils
RDEPEND="${RDEPEND}
	dev-java/yuicompressor
	imagemagick? ( media-gfx/imagemagick )

"

# Django apps
RDEPEND="${RDEPEND}
	dev-python/django-admin-tools
	dev-python/django-cacheops
	dev-python/django-celery
	dev-python/django-compressor
	dev-python/django-model-utils
	dev-python/django-redis
	dev-python/django-pickling
	dev-python/django-salmonella
	dev-python/django-tinymce

	dev-python/django-widget-tweaks

	dev-python/pinax-account
	dev-python/django-metron
	dev-python/django-eventlog

	dev-python/pinax-theme-bootstrap
	dev-python/django-forms-bootstrap
"

#DEBUG
RDEPEND="${RDEPEND}
	dev-python/django-debug-toolbar

	debug? ( 	dev-python/pep8
				dev-python/pyflakes
				dev-python/django-any
				dev-python/coverage
				dev-python/webtest
				dev-python/mock
			)
"
DEPEND="${RDEPEND}"
