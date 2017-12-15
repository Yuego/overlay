# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Python bindings for the XML Security Library."
HOMEPAGE="https://github.com/mehcode/python-xmlsec"

SRC_URI="https://github.com/mehcode/python-xmlsec/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-libs/xmlsec-1.2.14
	>=dev-libs/libxml2-2.9.1[python]
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/pkgconfig[${PYTHON_USEDEP}]
	dev-python/nose[${PYTHON_USEDEP}]
"

S="${WORKDIR}/python-${P}"
