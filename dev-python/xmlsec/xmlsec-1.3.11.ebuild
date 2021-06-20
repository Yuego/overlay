# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1

DESCRIPTION="Python bindings for the XML Security Library."
HOMEPAGE="https://github.com/mehcode/python-xmlsec"

SRC_URI="https://github.com/mehcode/python-xmlsec/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-libs/xmlsec-1.2.24
	>=dev-libs/libxml2-2.9.4[python]
	>=dev-libs/libxslt-1.1.29
	>=sys-libs/zlib-1.2.8
	virtual/libiconv
	>=dev-libs/openssl-1.0.1
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-3.4[${PYTHON_USEDEP}]
	>=dev-python/pkgconfig-1.5.1[${PYTHON_USEDEP}]
	>=dev-python/lxml-3.8[${PYTHON_USEDEP}]
"

S="${WORKDIR}/python-${P}"
