# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_11 pypy3 )

PYPI_PN=${PN/-/_}

inherit distutils-r1 git-r3

DESCRIPTION="A simple and elegant client that"
HOMEPAGE="https://github.com/pytgcalls/pytgcalls"

# SRC_URI="https://files.pythonhosted.org/packages/13/2d/b6c556e815f185075eeb747b1f89e8c6198b442010eeecc7e99ccc9d17d3/py_tgcalls-0.9.7-cp311-cp311-manylinux2014_x86_64.whl"

#SRC_URI="$(pypi_wheel_url "${PYPI_PN}" "${PV}" "cp311-cp311" "manylinux2014_x86_64")"

EGIT_REPO_URI="https://github.com/pytgcalls/pytgcalls.git"
EGIT_COMMIT="fc839b96f8766e335d9e6473cd25ea41226b83b4"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	!dev-python/pytgcalls[${PYTHON_USEDEP}]

	>=dev-python/aiohttp-3.9.3[${PYTHON_USEDEP}]
	>=dev-python/ntgcalls-1.2.0[${PYTHON_USEDEP}]

	dev-python/psutil[${PYTHON_USEDEP}]
	dev-python/screeninfo[${PYTHON_USEDEP}]
	dev-python/deprecation[${PYTHON_USEDEP}]

	net-libs/nodejs
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

