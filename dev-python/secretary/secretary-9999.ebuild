# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Take the power of Jinja2 templates to OpenOffice and LibreOffice."
HOMEPAGE="https://github.com/christopher-ramirez/secretary"

EGIT_REPO_URI="https://github.com/christopher-ramirez/secretary.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="-test"

RDEPEND="
	>=dev-python/jinja-2.7[${PYTHON_USEDEP}]
	>=dev-python/markdown2-2.3.0[${PYTHON_USEDEP}]
	test? (
		dev-python/pytest[${PYTHON_USEDEP}]
	)
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
