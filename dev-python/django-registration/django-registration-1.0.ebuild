# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1

DESCRIPTION="This is a fairly simple user-registration application for Django"
HOMEPAGE="https://django-registration.readthedocs.org/"

SRC_URI="https://bitbucket.org/ubernostrum/django-registration/downloads/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="django test"

RDEPEND="
	>=dev-python/django-1.3
"
DEPEND="dev-python/setuptools"

