# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Sends virtual input commands"
HOMEPAGE="https://github.com/moses-palmer/pynput"

SRC_URI="https://github.com/moses-palmer/pynput/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/python-xlib[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"

src_prepare(){
	rm -r tests
	rm setup.cfg
	sed -i "s/ + SETUP_PACKAGES,/,/g" setup.py

	distutils-r1_src_prepare
}
