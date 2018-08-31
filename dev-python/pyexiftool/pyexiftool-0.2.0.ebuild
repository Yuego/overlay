# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="A Python library to communicate with an instance of Phil Harvey's excellent ExifTool command-line application."
HOMEPAGE="https://github.com/smarnach/pyexiftool"

SRC_URI="https://github.com/smarnach/pyexiftool/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	media-libs/exiftool
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
