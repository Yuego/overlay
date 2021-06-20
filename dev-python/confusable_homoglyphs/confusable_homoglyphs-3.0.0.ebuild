# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1

DESCRIPTION="Detect confusable usage of unicode homoglyphs, prevent homograph attacks."
HOMEPAGE="https://github.com/vhf/confusable_homoglyphs https://pypi.python.org/pypi/confusable_homoglyphs"

SRC_URI="https://github.com/vhf/confusable_homoglyphs/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="cli"

RDEPEND="
	cli? (
		dev-python/click[${PYTHON_USEDEP}]
	)
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
