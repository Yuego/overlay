# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{8..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 pypi

DISTUTILS_USE_PEP517=setuptools

DESCRIPTION="Dynamic Django settings."
HOMEPAGE="http://django-constance.rtfd.org/ https://github.com/jazzband/django-constance"

# SRC_URI="https://github.com/jazzband/django-constance/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="redis"
RESTRICT="test"

RDEPEND="
	>=dev-python/django-4.2[${PYTHON_USEDEP}]
	redis? ( dev-db/redis )
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
