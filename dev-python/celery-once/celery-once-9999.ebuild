# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Celery Once allows you to prevent multiple execution and queuing of celery tasks."
HOMEPAGE="https://github.com/cameronmaske/celery-once"

EGIT_REPO_URI="https://github.com/cameronmaske/celery-once.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/celery-4.0[${PYTHON_USEDEP}]
	<dev-python/celery-5.0[${PYTHON_USEDEP}]
	>=dev-python/redis-py-2.10.2[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"

src_prepare(){
    sed -i "s/find_packages()/find_packages(exclude=('tests', 'tests.*'))/g" setup.py
    distutils-r1_src_prepare
}
