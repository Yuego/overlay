# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="An extension to the Django web framework that provides comprehensive version control facilities."
HOMEPAGE="https://github.com/etianen/django-reversion"
SRC_URI="https://github.com/etianen/django-reversion/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="
	>=dev-python/django-1.8
"
RDEPEND="dev-python/setuptools"
