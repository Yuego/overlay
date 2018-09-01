# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{4,5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="A Django application to manage tickets for an internal helpdesk. Formerly known as Jutda Helpdesk." 
HOMEPAGE="https://github.com/django-helpdesk/django-helpdesk"

SRC_URI="https://github.com/django-helpdesk/django-helpdesk/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.8
	
	>=dev-python/django-bootstrap-form-3.1
	<dev-python/django-bootstrap-form-4

	dev-python/email-reply-parser

	dev-python/django-markdown-deux

	dev-python/simplejson
	dev-python/six
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"