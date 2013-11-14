# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Dajaxixe is an Easy to use AJAX library for django. Its main goal is to trivialize the asynchronous communication within the django server code and your js code."
HOMEPAGE="https://github.com/jorgebastida/django-dajaxice"

SRC_URI="https://github.com/jorgebastida/django-dajaxice/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

RDEPEND="
	>=dev-python/django-1.3
"
DEPEND="dev-python/setuptools"

