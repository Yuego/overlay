# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{6..10} pypy3 )

inherit distutils-r1

DESCRIPTION="Set of high-level abstractions for Django forms"
HOMEPAGE="https://github.com/jazzband/django-formtools"

SRC_URI="https://github.com/jazzband/django-formtools/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/django-2.2[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare(){
	distutils-r1_src_prepare

	sed -i "s#use_scm_version=.*##g" setup.py
	sed -i "s#setup_requires=.*##g" setup.py
}
