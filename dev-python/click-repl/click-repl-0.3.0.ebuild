# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{9..13} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Subcommand REPL for click apps"
HOMEPAGE="https://github.com/click-contrib/click-repl"
SRC_URI="https://github.com/click-contrib/click-repl/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
KEYWORDS="amd64 ~arm ~arm64 ~x86"
SLOT="0"
RESTRICT="test"

RDEPEND=">=dev-python/click-7[${PYTHON_USEDEP}]"
BDEPEND="test? ( ${RDEPEND} )"

distutils_enable_tests pytest
