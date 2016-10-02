# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Mixin and template tags to integrate django-fsm transitions into the django admin."
HOMEPAGE="https://github.com/gadventures/django-fsm-admin"

SRC_URI="https://github.com/gadventures/django-fsm-admin/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.6
	>=dev-python/django-fsm-2.0.1
"
DEPEND="dev-python/setuptools"

