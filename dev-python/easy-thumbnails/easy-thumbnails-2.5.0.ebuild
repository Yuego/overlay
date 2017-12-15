# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{4,5,6} pypy pypy3 )

inherit eutils distutils-r1

DESCRIPTION="Easy thumbnails for Django"
HOMEPAGE="https://github.com/SmileyChris/easy-thumbnails.git"

SRC_URI="https://github.com/SmileyChris/easy-thumbnails/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.8[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S=${WORKDIR}/easy-thumbnails-${PV}
