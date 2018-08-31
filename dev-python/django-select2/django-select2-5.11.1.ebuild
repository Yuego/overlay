# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/django-select2/django-select2-4.0.0.ebuild,v 1.2 2013/04/02 16:28:26 prometheanfire Exp $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="A Django integration of Select2"
HOMEPAGE="https://pypi.python.org/pypi/Django-Select2 https://github.com/applegrew/django-select2"

SRC_URI="https://github.com/applegrew/django-select2/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="
	>=dev-python/django-1.8[${PYTHON_USEDEP}]
	>=dev-python/django-appconf-0.6.0[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare(){
	sed -i "s#find_packages()#find_packages(exclude=('tests','tests.*'))#g" setup.py
	distutils-r1_src_prepare
}
