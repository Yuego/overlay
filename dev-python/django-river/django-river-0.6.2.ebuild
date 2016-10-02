# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit eutils distutils-r1

DESCRIPTION="Django Workflow Library"
HOMEPAGE="https://github.com/javrasya/django-river"

SRC_URI="https://github.com/javrasya/django-river/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.7
	dev-python/django-mptt
	dev-python/factory-boy
	dev-python/mock
"
DEPEND="dev-python/setuptools"

