# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{4,5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="OpenCorpora.org dictionaries pre-compiled for pymorphy2"
HOMEPAGE="https://github.com/kmike/pymorphy2-dicts/ https://pypi.python.org/pypi/pymorphy2-dicts"

EGIT_REPO_URI="https://github.com/kmike/pymorphy2-dicts.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/pymorphy2-0.8-r1[${PYTHON_USEDEP}]
	dev-python/tqdm[${PYTHON_USEDEP}]
	dev-python/wheel[${PYTHON_USEDEP}]
	>=dev-python/cookiecutter-1.3[${PYTHON_USEDEP}]
	>=dev-python/LT2OpenCorpora-2.0.3[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	${RDEPEND}
"

src_prepare() {
	eapply_user

	ewarn '***'
	ewarn 'conversion of the dictionary can take a long time!'
	ewarn '***'

	./update.py ru download
	./update.py ru compile
	./update.py ru package
}

src_compile(){
	cd pymorphy2-dicts-ru 
	distutils-r1_src_compile
}

src_install(){
	cd pymorphy2-dicts-ru
	distutils-r1_src_install
}
