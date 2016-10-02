# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Russian morphological tagset converters library."
HOMEPAGE="https://pypi.python.org/pypi/russian-tagsets/"

EGIT_REPO_URI="https://github.com/kmike/russian-tagsets.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="test"

RDEPEND="
	test? ( dev-python/tox )
"
DEPEND="dev-python/setuptools"
