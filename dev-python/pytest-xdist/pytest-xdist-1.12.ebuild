# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/django-select2/django-select2-4.0.0.ebuild,v 1.2 2013/04/02 16:28:26 prometheanfire Exp $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3,3_4} )

inherit distutils-r1

DESCRIPTION="A Django integration of Select2"
HOMEPAGE="https://pypi.python.org/pypi/pytest-django"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="
	dev-python/django[${PYTHON_USEDEP}]
	dev-python/pytest[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
