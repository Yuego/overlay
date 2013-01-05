# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=4

SRC_URI=""
DESCRIPTION="Vizit3d meta"
HOMEPAGE="http://vizit3d.ru"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE="tinymce"

RDEPEND="dev-python/django[postgres]
	dev-python/django-cms
"

# Servers
RDEPEND="${RDEPEND}
	dev-db/postgresql-server
	www-servers/nginx
    www-servers/uwsgi[python]	
"

# Libs
RDEPEND="${RDEPEND}
	dev-python/sorl-thumbnail[redis]
	dev-python/south
"

# Utils
RDEPEND="${RDEPEND}
	dev-java/yuicompressor
"

# Django apps
RDEPEND="${RDEPEND}
	dev-python/django-admin-tools
	dev-python/django-cacheops
	dev-python/django-celery
	dev-python/django-compressor
	dev-python/django-filebrowser
	dev-python/django-model-utils
	dev-python/django-nested-sets
	dev-python/django-redis
	dev-python/django-pickling
	dev-python/django-salmonella
	dev-python/django-templated-emails
	tinymce? ( dev-python/django-tinymce )

	dev-python/django-widget-tweaks

"

#DEBUG
RDEPEND="${RDEPEND}
	dev-python/django-debug-toolbar
"
DEPEND="${RDEPEND}"

