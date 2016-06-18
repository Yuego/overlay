# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1 git-r3

DESCRIPTION="Dynamic Django settings."
HOMEPAGE="http://django-constance.rtfd.org/ https://github.com/jazzband/django-constance"

EGIT_REPO_URI="git://github.com/jazzband/django-constance.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="+database redis"

RDEPEND="
	>=dev-python/django-1.7
	redis? ( dev-db/redis )
	database? ( dev-python/django-picklefield )
"
DEPEND="dev-python/setuptools"

