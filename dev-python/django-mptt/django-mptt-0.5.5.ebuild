# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Utilities for implementing a modified pre-order traversal tree in django."
HOMEPAGE="https://github.com/django-mptt/django-mptt"
SRC_URI="https://github.com/django-mptt/django-mptt/archive/${PV}.tar.gz -> django-mptt-${PV}.tar.gz"
LICENSE="as-is"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.4.2"
DEPEND="dev-python/setuptools"

S="${WORKDIR}/django-mptt-${PV}"

