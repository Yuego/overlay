# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/django-select2/django-select2-4.0.0.ebuild,v 1.2 2013/04/02 16:28:26 prometheanfire Exp $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4} )

inherit distutils-r1 git-r3

MY_PN="Django-Select2"

DESCRIPTION="A Django integration of Select2"
HOMEPAGE="https://pypi.python.org/pypi/Django-Select2"

EGIT_REPO_URI="git://github.com/applegrew/django-select2.git"
EGIT_COMMIT="7850d52b648eaa6748f1640edbc9897114e4b3ac"

#S="${WORKDIR}/${MY_PN}-${PV}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="dev-python/django[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"


src_prepare(){
	sed -i "s#find_packages()#find_packages(exclude=('tests','tests.*'))#g" setup.py
    distutils-r1_src_prepare
}
