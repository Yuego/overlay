# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Sentry is a realtime, platform-agnostic error logging and aggregation platform"
HOMEPAGE="https://getsentry.com"

EGIT_REPO_URI="git://github.com/getsentry/sentry.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE="postgres mysql test"

RDEPEND="
	>=dev-python/beautifulsoup-3.2.1
	<dev-python/beautifulsoup-3.3.0

	>=dev-python/celery-3.0.15
	<dev-python/celery-3.1.0

	>=dev-python/django-celery-3.0.11
	<dev-python/django-celery-3.1.0

	>=dev-python/cssutils-0.9.9
	<dev-python/cssutils-0.10.0

	>=dev-python/django-crispy-forms-1.2.3
	<dev-python/django-crispy-forms-1.3.0

	>=dev-python/django-paging-0.2.4
	<dev-python/django-paging-0.3.0

	>=dev-python/django-picklefield-0.3.0
	<dev-python/django-picklefield-0.4.0

	>=dev-python/django-social-auth-0.7.28
	<dev-python/django-social-auth-0.8

	>=dev-python/django-static-compiler-0.3.0
	<dev-python/django-static-compiler-0.4.0

	>=dev-python/django-templatetag-sugar-0.1.0
	<dev-python/django-templatetag-sugar-0.2.0

	>=dev-python/email-reply-parser-0.2.0
	<dev-python/email-reply-parser-0.3.0

	>=www-servers/gunicorn-0.17.2
	<www-servers/gunicorn-0.18.0

	>=dev-python/httpagentparser-1.2.1
	<dev-python/httpagentparser-1.3.0

	>=dev-python/logan-0.5.8.2
	<dev-python/logan-0.6.0

	>=dev-python/nydus-0.10.0
	<dev-python/nydus-0.11.0

	>=dev-python/pygments-1.6.0
	<dev-python/pygments-1.7.0

	>=dev-python/pynliner-0.4.0
	<dev-python/pynliner-0.6.0

	>=dev-python/python-dateutil-1.5.0
	<dev-python/python-dateutil-2.0.0

	>=dev-python/python-memcached-1.53
	<dev-python/python-memcached-2.0.0

	>=dev-python/raven-3.3.8
	
	>=dev-db/redis-2.7.0
	<dev-db/redis-2.9.0

	>=dev-python/simplejson-3.1.0
	<dev-python/simplejson-3.4.0

	>=dev-python/setproctitle-1.1.7
	<dev-python/setproctitle-1.2.0

	=dev-python/south-0.8.2

	>=dev-python/urllib3-1.7.1
	<dev-python/urllib3-1.8.0

	postgres? ( 
		>=dev-python/psycopg-2.5.0
		<dev-python/psycopg-2.6.0
	)

	mysql? (
		>=dev-python/mysql-python-1.2.0
		<dev-python/mysql-python-1.3.0
	)

"
DEPEND="dev-python/setuptools"

