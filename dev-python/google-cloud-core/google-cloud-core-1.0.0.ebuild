# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python3_{5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Core Helpers for Google Cloud Python Client Library"
HOMEPAGE="https://pypi.org/project/google-cloud-core"

SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE="grpc"

RDEPEND="
	>=dev-python/google-api-core-1.11.0[${PYTHON_USEDEP}]
	<dev-python/google-api-core-2.0

	grpc? (
		>=dev-python/grpcio-1.8.2[${PYTHON_USEDEP}]
	)
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -name '*.pth' -delete || die
}
