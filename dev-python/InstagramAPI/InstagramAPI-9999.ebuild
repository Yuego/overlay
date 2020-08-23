# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7,8} )

inherit distutils-r1 git-r3

DESCRIPTION="Unofficial instagram API, give you access to ALL instagram features"
HOMEPAGE="https://github.com/LevPasha/Instagram-API-python"

EGIT_REPO_URI="https://github.com/LevPasha/Instagram-API-python.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/requests-2.11.1[${PYTHON_USEDEP}]
	>=dev-python/requests-toolbelt-0.7.0[${PYTHON_USEDEP}]
	>=dev-python/moviepy-0.2.2.11[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
