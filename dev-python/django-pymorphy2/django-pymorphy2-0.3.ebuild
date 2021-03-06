# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1

DESCRIPTION="Django and PyMorphy2 integration"
HOMEPAGE="https://github.com/Yuego/django-pymorphy2"

SRC_URI="https://github.com/Yuego/django-pymorphy2/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.9[${PYTHON_USEDEP}]
	>=dev-python/pymorphy2-0.7[${PYTHON_USEDEP}]
	dev-python/pymorphy2-dicts[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
