# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8,9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Dynamic Django settings."
HOMEPAGE="http://django-constance.rtfd.org/ https://github.com/jazzband/django-constance"

EGIT_REPO_URI="git://github.com/jazzband/django-constance.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="+database redis"

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
	redis? ( dev-db/redis )
	database? ( dev-python/django-picklefield[${PYTHON_USEDEP}] )
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
