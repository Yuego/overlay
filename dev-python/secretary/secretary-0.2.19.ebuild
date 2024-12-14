# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )

inherit distutils-r1

DESCRIPTION="Take the power of Jinja2 templates to OpenOffice and LibreOffice."
HOMEPAGE="https://github.com/christopher-ramirez/secretary"

SRC_URI="https://github.com/christopher-ramirez/secretary/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="-test"
RESTRICT="test"

RDEPEND="
	dev-python/jinja2[${PYTHON_USEDEP}]
	>=dev-python/markdown2-2.3.0[${PYTHON_USEDEP}]
	test? (
		dev-python/pytest[${PYTHON_USEDEP}]
	)
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
