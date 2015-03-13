# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=5

LICENSE="BSD"

SRC_URI=""
DESCRIPTION="Gas Service Meta"
HOMEPAGE="http://gas-service.ru"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

RDEPEND="
	dev-python/django
"

# Servers
RDEPEND="${RDEPEND}
	dev-db/postgresql[server]
	www-servers/nginx
    www-servers/uwsgi[python]
	
"

# Libs
RDEPEND="${RDEPEND}
	dev-python/django-mptt

	dev-python/py3o
	dev-python/django-downloadview
	dev-python/django-v3dlibs

	dev-python/django-cacheops
"
DEPEND="${RDEPEND}"

