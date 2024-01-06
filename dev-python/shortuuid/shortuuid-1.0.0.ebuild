# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..12} pypy3 )

inherit distutils-r1

DESCRIPTION="Simple python library that generates concise, unambiguous, URL-safe UUIDs"
HOMEPAGE="https://github.com/skorokithakis/shortuuid"

SRC_URI="https://github.com/skorokithakis/shortuuid/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
