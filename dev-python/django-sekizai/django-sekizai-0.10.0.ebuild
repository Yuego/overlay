# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="Django Template Blocks with extra functionality"
HOMEPAGE="https://github.com/ojii/django-sekizai"

SRC_URI="https://github.com/ojii/django-sekizai/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
	>=dev-python/django-classy-tags-0.3.1[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
