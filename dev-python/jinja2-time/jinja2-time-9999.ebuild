# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Jinja2 Extension for Dates and Times"
HOMEPAGE="https://github.com/hackebrot/jinja2-time"

EGIT_REPO_URI="git://github.com/hackebrot/jinja2-time.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/jinja-2.7
	dev-python/arrow
"
DEPEND="dev-python/setuptools"

