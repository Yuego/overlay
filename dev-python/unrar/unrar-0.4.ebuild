# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1

DESCRIPTION="A ctypes wrapper for UnRAR library, plus a rarfile module on top of it."
HOMEPAGE="https://github.com/matiasb/python-unrar http://python-unrar.readthedocs.org/en/latest/"

SRC_URI="https://github.com/matiasb/python-unrar/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S="${WORKDIR}/python-${P}"
RDEPEND="
	app-arch/unrar
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
