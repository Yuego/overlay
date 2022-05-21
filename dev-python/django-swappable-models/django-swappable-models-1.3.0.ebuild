# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1

DESCRIPTION="Django Swappable Models - No longer only for auth.User!"
HOMEPAGE="https://github.com/openwisp/django-swappable-models"

SRC_URI="https://github.com/openwisp/django-swappable-models/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	dev-python/django[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"


src_prepare(){
	distutils-r1_src_prepare

	sed -i "s#use_scm.*##g" setup.py
}
