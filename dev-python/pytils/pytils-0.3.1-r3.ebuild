# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Pytils is a Russian-specific string utils"
HOMEPAGE="https://github.com/j2a/pytils"

EGIT_REPO_URI="https://github.com/j2a/pytils.git"
EGIT_COMMIT="d5bb6907595bdac3edaba41bb8e0e78fa0f529bc"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-2.0[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools"[${PYTHON_USEDEP}]

DOCS="LICENSE README.md"
