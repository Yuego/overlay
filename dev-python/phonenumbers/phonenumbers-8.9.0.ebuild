# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Python port of Google's libphonenumber"
HOMEPAGE="https://github.com/daviddrysdale/python-phonenumbers"

SRC_URI="https://github.com/daviddrysdale/python-phonenumbers/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
S="${WORKDIR}/python-${P}"