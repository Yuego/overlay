# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=5

LICENSE="as-is"

SRC_URI=""
DESCRIPTION="Vizit3d meta"
HOMEPAGE="http://vizit3d.ru"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE="debug imagemagick +storages -vim"

RDEPEND="dev-python/django"

# Servers
RDEPEND="${RDEPEND}
	dev-db/postgresql[server]
	dev-db/postgis
	www-servers/nginx
    www-servers/uwsgi[python]
"

# Libs
RDEPEND="${RDEPEND}
	net-libs/nodejs[npm]
	dev-python/feedparser
	dev-python/kombu
	dev-python/lxml
	dev-python/pytils
	dev-python/pytz
	dev-python/sorl-thumbnail[redis]
	!=dev-python/south-0.8.3
	|| ( dev-python/south >=dev-python/django-1.7 )
	dev-python/yandex-maps
	dev-python/django-pymorphy2

	dev-python/python-swiftclient
	dev-python/scandir

	dev-libs/geoip
	dev-python/django-fias

	dev-python/djorm-ext-pool

	dev-python/phonenumbers

	dev-python/transliterate

	dev-python/django-disqus
	dev-python/django-floppyforms
    
"

# Utils
RDEPEND="${RDEPEND}
	dev-java/yuicompressor
	dev-lang/closure-compiler-bin

    imagemagick? ( media-gfx/imagemagick )

	vim? ( app-editors/vim[python,vim-pager]
			app-vim/vimpython
			app-vim/vimcommander )
	media-gfx/krpanotools
	virtual/ffmpeg[encode,mp3,theora]
"

# Django apps
RDEPEND="${RDEPEND}

	dev-python/django-autocomplete-light
	dev-python/django-admin-tools
	dev-python/django-bitfield
	dev-python/django-pgfields
	dev-python/django-hosts
	dev-python/django-cacheops
	dev-python/django-compressor
	dev-python/django-filebrowser
	dev-python/django-flatblocks
	dev-python/django-model-utils
	dev-python/django-redis
	dev-python/django-pickling
	dev-python/django-salmonella
	dev-python/django-templated-emails
	dev-python/django-tinymce
	dev-python/django-modeltranslation
	dev-python/django-hstore

	dev-python/django-widget-tweaks
	dev-python/django-tastypie

	dev-python/twitter

	dev-python/django-jsonfield
	dev-python/django-extensions

	dev-python/django-tagging

	dev-python/tourmaker
	dev-python/django-ratings
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
