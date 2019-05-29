# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python3_{5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Google Cloud Translation Client"
HOMEPAGE="https://pypi.org/project/google-cloud-translate/ https://cloud.google.com/translate/docs"

SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/google-api-core-1.6.0[${PYTHON_USEDEP},grpc]
	<dev-python/google-api-core-2.0

	>=dev-python/google-cloud-core-1.0.0[${PYTHON_USEDEP}]
	<dev-python/google-cloud-core-2.0
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -name '*.pth' -delete || die
}
