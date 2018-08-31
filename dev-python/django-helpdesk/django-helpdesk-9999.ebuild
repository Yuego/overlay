# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{4,5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="A Django application to manage tickets for an internal helpdesk. Formerly known as Jutda Helpdesk."
HOMEPAGE="https://github.com/django-helpdesk/django-helpdesk"

EGIT_REPO_URI="git://github.com/django-helpdesk/django-helpdesk.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.8[${PYTHON_USEDEP}]
	
	>=dev-python/django-bootstrap-form-3.1[${PYTHON_USEDEP}]
	<dev-python/django-bootstrap-form-4[${PYTHON_USEDEP}]

	dev-python/email-reply-parser[${PYTHON_USEDEP}]

	dev-python/django-markdown-deux[${PYTHON_USEDEP}]

	dev-python/simplejson[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
