# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Class based template tags for django"
HOMEPAGE="https://github.com/ojii/django-classy-tags"

SRC_URI="https://github.com/ojii/django-classy-tags/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3"
DEPEND="dev-python/setuptools"


