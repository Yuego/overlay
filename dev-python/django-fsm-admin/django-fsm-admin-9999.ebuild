# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy{2_0,3} )

inherit distutils-r1 git-r3

DESCRIPTION="Mixin and template tags to integrate django-fsm transitions into the django admin."
HOMEPAGE="https://github.com/gadventures/django-fsm-admin"

EGIT_REPO_URI="git://github.com/gadventures/django-fsm-admin.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.6
	>=dev-python/django-fsm-2.0.1
"
DEPEND="dev-python/setuptools"

