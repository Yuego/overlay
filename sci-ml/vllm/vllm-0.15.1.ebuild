# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{10..14} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="A high-throughput and memory-efficient inference and serving engine for LLMs"
HOMEPAGE="https://github.com/vllm-project/vllm"

SRC_URI="https://github.com/vllm-project/vllm/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	sci-ml/pytorch[${PYTHON_USEDEP}]

"

DEPEND="
>=dev-build/cmake-3.26.1
dev-build/ninja
dev-python/packaging[${PYTHON_USEDEP}]
dev-python/setuptools[${PYTHON_USEDEP}]
dev-python/setuptools-scm[${PYTHON_USEDEP}]
dev-python/wheel[${PYTHON_USEDEP}]
dev-python/jinja2[${PYTHON_USEDEP}]


"
