# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="OpenCorpora.org dictionaries pre-compiled for pymorphy2"
HOMEPAGE="https://github.com/kmike/pymorphy2-dicts/ http://pypi.python.org/pypi/pymorphy2-dicts"

EGIT_REPO_URI="https://github.com/kmike/pymorphy2-dicts.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	dev-python/pymorphy2
	dev-python/tqdm
	dev-python/wheel
	>=dev-python/cookiecutter-1.3
	>=dev-python/LT2OpenCorpora-2.0.3
"
DEPEND="dev-python/setuptools
	${RDEPEND}
"

src_prepare() {
	ewarn '***'
	ewarn 'conversion of the dictionary can take a long time!'
	ewarn '***'

	mkdir 'pymorphy2-dicts/pymorphy2_dicts/data'
	./update.py ru
}

src_compile(){
	cd pymorphy2-dicts	
	distutils-r1_src_compile
}

src_install(){
	cd pymorphy2-dicts
	distutils-r1_src_install
}

