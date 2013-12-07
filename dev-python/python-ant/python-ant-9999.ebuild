# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Python implementation of the ANT, ANT+, and ANT-FS protocols"
HOMEPAGE="https://github.com/mvillalba/python-ant"

EGIT_REPO_URI="git://github.com/mvillalba/python-ant.git"


LICENSE="as-is"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE="usb"

RDEPEND="dev-lang/python
	dev-python/msgpack-python
	dev-python/pyserial
	usb? ( dev-python/pyusb )"
DEPEND="${RDEPEND}"
