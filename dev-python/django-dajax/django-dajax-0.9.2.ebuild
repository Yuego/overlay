# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_3} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Easy to use library to create asynchronous presentation logic with django and dajaxice"
HOMEPAGE="https://github.com/jorgebastida/django-dajax"

SRC_URI="https://github.com/jorgebastida/django-dajax/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.3
	>=dev-python/django-dajaxice-0.5
"
DEPEND="dev-python/setuptools"

