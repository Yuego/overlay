# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8,9} pypy3 )

inherit distutils-r1

DESCRIPTION="Python bindings for the Hunspell spellchecker engine"
HOMEPAGE="https://github.com/blatinier/pyhunspell"

SRC_URI="https://github.com/blatinier/pyhunspell/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	app-text/hunspell
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
