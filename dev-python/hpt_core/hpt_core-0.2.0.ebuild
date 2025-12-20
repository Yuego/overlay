# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{10..14} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION="HPT Core Utils"
EGIT_REPO_URI="git@github.com-hptsu:HPT-SU/hpt_core.git"
EGIT_COMMIT="96f916c291765028ad322f9fd2264b772100ea11"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	dev-python/user_agent[$PYTHON_USEDEP]
"

DEPEND=""

