# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..12} pypy3 )

inherit distutils-r1

DESCRIPTION="PyAV is a Pythonic binding for the FFmpeg libraries"
HOMEPAGE="https://github.com/PyAV-Org/PyAV"

SRC_URI="https://github.com/PyAV-Org/PyAV/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"


LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

S="${WORKDIR}/PyAV-${PV}"

RDEPEND="
	media-video/ffmpeg
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
