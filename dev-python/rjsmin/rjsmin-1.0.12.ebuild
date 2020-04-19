# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_{6,7} python3_{3,4,5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="Fast javascript minifier for Python http://opensource.perlig.de/rjsmin/"
HOMEPAGE="https://github.com/ndparker/rjsmin"

SRC_URI="https://github.com/ndparker/rjsmin/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
