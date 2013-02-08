# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=4

SRC_URI=""
DESCRIPTION="Vizit3d meta"
HOMEPAGE="http://vizit3d.ru"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE="-annoying debug -feincms imagemagick -loginza -nested -robokassa -sitetree +storages -vim"

RDEPEND="dev-python/django[postgres]"

# Servers
RDEPEND="${RDEPEND}
	dev-db/postgresql-server
	www-servers/nginx
    www-servers/uwsgi[python]	
"

# Libs
RDEPEND="${RDEPEND}
	dev-python/feedparser
	dev-python/kombu
	dev-python/lxml
	dev-python/pymorphy
	dev-python/pytils
	dev-python/pytz
	dev-python/sorl-thumbnail[redis]
	dev-python/south
	dev-python/yandex-maps
"

# Utils
RDEPEND="${RDEPEND}
	dev-java/yuicompressor
    imagemagick? ( media-gfx/imagemagick )

	vim? ( app-editors/vim[python,vim-pager]
			app-vim/vimpython
			app-vim/zencoding-vim
			app-vim/vimcommander )
"

# Django apps
RDEPEND="${RDEPEND}
	dev-python/django-admin-tools
	dev-python/django-hosts
	annoying? ( dev-python/django-annoying )
	dev-python/django-cacheops
	dev-python/django-celery
	dev-python/django-compressor
	feincms? ( dev-python/django-fein-cms )
	dev-python/django-filebrowser
	loginza? ( dev-python/django-loginza )
	dev-python/django-model-utils
	nested? ( dev-python/django-nested-sets )
	dev-python/django-redis
	dev-python/django-pickling
	robokassa? ( dev-python/django-robokassa )
	dev-python/django-salmonella
	sitetree? ( dev-python/django-sitetree )
	dev-python/django-templated-emails
	dev-python/markdown
	dev-python/django-tinymce

	storages? ( dev-python/django-storages )
	dev-python/django-widget-tweaks
	dev-python/django-tastypie

	dev-python/twitter
	dev-python/django-inplaceedit
	dev-python/django-sphinx
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
