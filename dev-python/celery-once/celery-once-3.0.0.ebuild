# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Celery Once allows you to prevent multiple
execution and queuing of celery tasks."
HOMEPAGE="https://github.com/cameronmaske/celery-once"

SRC_URI="https://github.com/cameronmaske/celery-once/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/celery-4.0[${PYTHON_USEDEP}]
	>=dev-python/redis-5.0.0[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"

src_prepare(){
	sed -i "s/find_packages()/find_packages(exclude=('tests', 'tests.*'))/g" setup.py
	distutils-r1_src_prepare
}
