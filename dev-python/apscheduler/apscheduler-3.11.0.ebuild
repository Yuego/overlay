# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1 git-r3

DESCRIPTION="In-process task scheduler with Cron-like capabilities"
HOMEPAGE="
	https://github.com/agronholm/apscheduler/
	https://pypi.org/project/APScheduler/
"

EGIT_REPO_URI="https://github.com/agronholm/apscheduler.git"
EGIT_TAG="3.11.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

# imports pkg_resources
RDEPEND="
	>=dev-python/anyio-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/attrs-22.1[${PYTHON_USEDEP}]
	>=dev-python/tenacity-8.0[${PYTHON_USEDEP}]
	>=dev-python/tzlocal-3.0[${PYTHON_USEDEP}]
"
BDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools-scm[${PYTHON_USEDEP}]
	test? (
		>=dev-python/sqlalchemy-1.4[${PYTHON_USEDEP}]
		dev-python/pytest-asyncio[${PYTHON_USEDEP}]
		dev-python/pytest-tornado[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests pytest

EPYTEST_DESELECT=(
	tests/test_jobstores.py::test_repr_mongodbjobstore
	tests/test_jobstores.py::test_repr_redisjobstore
	tests/test_jobstores.py::test_repr_zookeeperjobstore
)

python_test() {
	local -x PYTEST_DISABLE_PLUGIN_AUTOLOAD=1
	epytest -p asyncio -p tornado
}
