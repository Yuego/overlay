# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{8..10} pypy3 )

inherit distutils-r1

DESCRIPTION="Dynamic Django settings."
HOMEPAGE="http://django-constance.rtfd.org/ https://github.com/jazzband/django-constance"

SRC_URI="https://github.com/jazzband/django-constance/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="+database redis"

RDEPEND="
	>=dev-python/django-2.2[${PYTHON_USEDEP}]
	redis? ( dev-db/redis )
	database? ( >=dev-python/django-picklefield-3.1[${PYTHON_USEDEP}] )
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
