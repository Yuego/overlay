# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1

DESCRIPTION="A ctypes wrapper for UnRAR library, plus a rarfile module on top of it."
HOMEPAGE="https://github.com/matiasb/python-unrar http://python-unrar.readthedocs.org/en/latest/"

SRC_URI="https://github.com/matiasb/python-unrar/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S="${WORKDIR}/python-${P}"
RDEPEND=""
DEPEND="dev-python/setuptools"

