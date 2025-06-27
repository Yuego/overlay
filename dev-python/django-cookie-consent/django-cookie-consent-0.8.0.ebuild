# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Manage cookie information and let visitors give or reject consent for them."
HOMEPAGE="https://github.com/jazzband/django-cookie-consent"

SRC_URI="https://github.com/jazzband/django-cookie-consent/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/django-4.2[${PYTHON_USEDEP}]
	dev-python/django-appconf[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
