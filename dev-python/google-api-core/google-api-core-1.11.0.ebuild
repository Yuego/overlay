# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python3_{5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Google Cloud Api Core"
HOMEPAGE="https://pypi.org/project/google-api-core"

SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE="+grpc grpcgcp grpcio-gcp"

RDEPEND="
	>=dev-python/googleapis-common-protos-1.5.3[${PYTHON_USEDEP}]
	!=dev-python/googleapis-common-protos-1.5.4
	<dev-python/googleapis-common-protos-2.0

	>=dev-python/protobuf-python-3.4.0[${PYTHON_USEDEP}]

	>=dev-python/google-auth-0.4.0[${PYTHON_USEDEP}]
	<dev-python/google-auth-2.0

	>=dev-python/requests-2.18.0[${PYTHON_USEDEP}]
	<dev-python/requests-3.0

	>=dev-python/six-1.10.0[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]

	grpc? (
		>=dev-python/grpcio-1.8.2[${PYTHON_USEDEP}]
	)

	grpcgcp? (
		>=dev-python/grpcio-gcp-0.2.2[${PYTHON_USEDEP}]
	)

	grpcio-gcp? (
		>=dev-python/grpcio-gcp-0.2.2[${PYTHON_USEDEP}]
	)
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -name '*.pth' -delete || die
}
