# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="An extension to the Django web framework that
provides comprehensive version control facilities."
HOMEPAGE="https://github.com/etianen/django-reversion"
SRC_URI="https://github.com/etianen/django-reversion/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
RESTRICT="test"

DEPEND="
	>=dev-python/django-4.2[${PYTHON_USEDEP}]
"
RDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
