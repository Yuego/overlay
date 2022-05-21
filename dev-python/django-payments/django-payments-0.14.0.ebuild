# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1

DESCRIPTION="Universal payment handling for Django"
HOMEPAGE="https://github.com/jazzband/django-payments"

SRC_URI="https://github.com/jazzband/django-payments/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/django-2.2[${PYTHON_USEDEP}]
	>=dev-python/requests-1.2.0[${PYTHON_USEDEP}]
	>=dev-python/django-phonenumber-field-6.0.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare(){
	distutils-r1_src_prepare

	sed -i 's#use_scm_version#stub_01#g' setup.py
	sed -i 's#setup_requires#stub_02#g' setup.py
}
