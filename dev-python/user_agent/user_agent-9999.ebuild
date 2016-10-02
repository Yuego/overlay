# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Generator of User-Agent header"
HOMEPAGE="https://github.com/lorien/user_agent"

EGIT_REPO_URI="git://github.com/lorien/user_agent.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/six
"
DEPEND="dev-python/setuptools"
