# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{6..10} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="DAWG-based dictionary-like read-only objects for Python. Based on 'dawgdic' C++ library."
HOMEPAGE="https://github.com/kmike/DAWG"

EGIT_REPO_URI="https://github.com/pytries/DAWG.git"
EGIT_BRANCH="actions"
EGIT_COMMIT="a656feecf9ddb810de49d557f94374fb2e7f9916"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/dawg-${PV}"
