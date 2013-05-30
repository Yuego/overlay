# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7} pypy{1_9,2_0} )

inherit distutils-r1 git-2

DESCRIPTION="A Pure Python BitTorrent Tracker using Tornado."
HOMEPAGE="https://github.com/semk/Pytt"

EGIT_REPO_URI="https://github.com/semk/Pytt"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=www-servers/tornado-1.2.1
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="pytt"

src_test() {
	python setup.py test || die "tests failed"
}

src_prepare() {
	distutils-r1_src_prepare
	rm "$S/tests" -r
}

