# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Take the power of Jinja2 templates to OpenOffice and LibreOffice."
HOMEPAGE="https://github.com/christopher-ramirez/secretary"

SRC_URI="https://github.com/christopher-ramirez/secretary/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="-test"

RDEPEND="
	>=dev-python/jinja-2.7
	>=dev-python/markdown2-2.3.0
	test? (
		dev-python/pytest
	)
"
DEPEND="dev-python/setuptools"
