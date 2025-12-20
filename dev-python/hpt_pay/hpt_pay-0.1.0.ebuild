# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{10..14} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION="HPT Payment Apps"
EGIT_REPO_URI="git@github.com-hptsu:HPT-SU/hpt_pay.git"
EGIT_COMMIT="2f1192fb8a9fdab98b5fb664e3e40d2b239a7120"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/hpt_core-0.2.0[$PYTHON_USEDEP]
"

DEPEND=""

