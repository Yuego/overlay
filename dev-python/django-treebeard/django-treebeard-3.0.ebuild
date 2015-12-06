# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Efficient tree implementations for Django"
HOMEPAGE="https://github.com/tabo/django-treebeard"

SRC_URI="https://github.com/tabo/django-treebeard/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="adm64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.6
"
DEPEND="dev-python/setuptools"

