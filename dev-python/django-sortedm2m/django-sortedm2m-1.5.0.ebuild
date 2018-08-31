# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="A transparent sorted ManyToMany field for django."
HOMEPAGE="https://github.com/gregmuellegger/django-sortedm2m https://pypi.python.org/pypi/django-sortedm2m"

SRC_URI="https://github.com/gregmuellegger/django-sortedm2m/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.8[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"
