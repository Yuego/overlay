# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Django Template Blocks with extra functionality"
HOMEPAGE="https://github.com/ojii/django-sekizai"

EGIT_REPO_URI="https://github.com/ojii/django-sekizai.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.3
	>=dev-python/django-classy-tags-0.3.1"
DEPEND="dev-python/setuptools"

