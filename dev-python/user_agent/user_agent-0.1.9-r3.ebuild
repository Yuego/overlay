# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Generator of User-Agent header"
HOMEPAGE="https://github.com/lorien/user_agent"

EGIT_REPO_URI="https://github.com/lorien/user_agent.git"
EGIT_COMMIT="954e9c3716a640ee356ad2724e82f73fe55cc3e5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	dev-python/six[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
