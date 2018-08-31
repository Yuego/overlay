# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="A Python library to communicate with an instance of Phil Harvey's excellent ExifTool command-line application."
HOMEPAGE="https://github.com/smarnach/pyexiftool"

EGIT_REPO_URI="git://github.com/smarnach/pyexiftool.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	media-libs/exiftool
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
