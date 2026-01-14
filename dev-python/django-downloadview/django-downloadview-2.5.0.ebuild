# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..14} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Serve files with Django."
HOMEPAGE="https://github.com/jazzband/django-downloadview"

SRC_URI="https://github.com/jazzband/django-downloadview/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/django-4.2[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare(){
	sed -i "s#use_scm_version#stub1#g" setup.py
	sed -i "s#setup_requires#stub2#g" setup.py
	distutils-r1_src_prepare
}
