# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION="Take the power of Jinja2 templates to OpenOffice and LibreOffice."
HOMEPAGE="https://github.com/christopher-ramirez/secretary"

EGIT_REPO_URI="https://github.com/redfunction/secretary.git"
EGIT_COMMIT="a19bc5ecc2ec0c8314b5db38888a393f3ac4da09"

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
