# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{6..10} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="DAWG-based dictionary-like read-only objects for Python."
HOMEPAGE="https://github.com/kmike/DAWG"

EGIT_REPO_URI="https://github.com/iliadmitriev/DAWG"
EGIT_COMMIT="8858678a34e38a975ae08a2a77ed4475a2f65ae2"
EGIT_BRANCH="fix_py_3_10"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/dawg-${PV}"


src_prepare(){
	distutils-r1_src_prepare

	./update_cpp.sh
}
