# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

PYTHON_COMPAT=( python2_7 python3_{4,5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="Seamless Polymorphic Inheritance for Django Models"
HOMEPAGE="https://pypi.python.org/pypi/django-polymorphic https://github.com/django-polymorphic/django-polymorphic"

SRC_URI="https://github.com/django-polymorphic/django-polymorphic/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
KEYWORDS="amd64 x86"
SLOT="0"
IUSE=""

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
"

DEPEND="
	${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
"

S="${WORKDIR}/django-polymorphic-${PV}"
