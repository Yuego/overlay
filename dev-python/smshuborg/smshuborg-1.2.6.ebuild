# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Wrapper for automatic reception of SMS-messages by smshub.org"
HOMEPAGE="https://github.com/ravensoracle/python-smshub-org"

EGIT_REPO_URI="https://github.com/ravensoracle/python-smshub-org.git"
EGIT_COMMIT="83a15bdf89093dbd24c460110e7ebcb51a155a52"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/requests-2.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
