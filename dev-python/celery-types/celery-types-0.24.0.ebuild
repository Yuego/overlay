# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..14} pypy3 )
DISTUTILS_USE_PEP517=uv-build

inherit distutils-r1 git-r3

DESCRIPTION="Type stubs for celery related projects"
HOMEPAGE="https://github.com/sbdchd/celery-types"

EGIT_REPO_URI="https://github.com/sbdchd/celery-types.git"
EGIT_BRANCH="steved-release-${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/typing-extensions-4.15[${PYTHON_USEDEP}]

"

DEPEND="dev-python/uv-build[${PYTHON_USEDEP}]"
