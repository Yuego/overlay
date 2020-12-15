# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8,9} pypy3 )

inherit distutils-r1

DESCRIPTION="Reusable, generic mixins for Django"
HOMEPAGE="https://github.com/brack3t/django-braces"

SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
