# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="Exif manipulation with pure python script."
HOMEPAGE="https://github.com/hMatoba/Piexif"

SRC_URI="https://github.com/hMatoba/Piexif/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S="${WORKDIR}/Piexif-${PV}"

RDEPEND=""
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
