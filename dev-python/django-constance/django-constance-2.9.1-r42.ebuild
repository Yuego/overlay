# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{8..11} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Dynamic Django settings."
HOMEPAGE="http://django-constance.rtfd.org/ https://github.com/jazzband/django-constance"

EGIT_REPO_URI="https://github.com/jazzband/django-constance.git"
EGIT_COMMIT="796f0fac5c20d503299dfce8c8c8009673be582e"

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
