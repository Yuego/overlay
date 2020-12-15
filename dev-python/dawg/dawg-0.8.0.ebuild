# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="DAWG-based dictionary-like read-only objects for Python. Based on 'dawgdic' C++ library."
HOMEPAGE="https://github.com/kmike/DAWG"

EGIT_REPO_URI="https://github.com/pytries/DAWG.git"
EGIT_COMMIT="239a9ae6896789a5174b3f55107282d5b0f0c6a8"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="test"

RDEPEND=""
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/dawg-${PV}"
