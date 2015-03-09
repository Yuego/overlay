# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1

DESCRIPTION="An Advanced Django CMS."
HOMEPAGE="https://github.com/divio/djangocms-admin-style"

SRC_URI="https://github.com/divio/djangocms-admin-style/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="test"

RDEPEND="
	>=dev-python/django-1.6
"
DEPEND="dev-python/setuptools"

