# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Easy to use Python module to extract Exif metadata from tiff and jpeg files."
HOMEPAGE="https://github.com/ianare/exif-py"

SRC_URI="https://github.com/ianare/exif-py/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S="${WORKDIR}/exif-py-${PV}"

RDEPEND=""
DEPEND="dev-python/setuptools"

