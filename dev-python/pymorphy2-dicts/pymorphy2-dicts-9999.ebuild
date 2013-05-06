# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy{1_9,2_0} )

inherit distutils-r1 git-2

DESCRIPTION="OpenCorpora.org dictionaries pre-compiled for pymorphy2"
HOMEPAGE="http://pypi.python.org/pypi/pymorphy2-dicts"

EGIT_REPO_URI="https://github.com/kmike/pymorphy2-dicts.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="dev-python/pymorphy2
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="pymorphy2_dicts"

src_prepare() {
	ewarn '***'
	ewarn 'conversion of the dictionary can take a long time!'
	ewarn '***'

	mkdir 'pymorphy2_dicts/data'
	./update.py
}

src_test() {
	python setup.py test || die "tests failed"
}

