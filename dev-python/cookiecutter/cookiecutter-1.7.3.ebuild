# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1

DESCRIPTION="A command-line utility that creates projects from cookiecutters (project templates),
e.g. creating a Python package project from a Python package project template."
HOMEPAGE="https://github.com/audreyr/cookiecutter https://cookiecutter.readthedocs.io"

SRC_URI="https://github.com/audreyr/cookiecutter/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/binaryornot-0.4.4[${PYTHON_USEDEP}]
	>=dev-python/jinja-2.7[${PYTHON_USEDEP}]
	<dev-python/jinja-4
	>=dev-python/jinja2-time-0.2.0[${PYTHON_USEDEP}]
	>=dev-python/click-7.0[${PYTHON_USEDEP}]
	<dev-python/click-9
	>=dev-python/pyyaml-5.3.1[${PYTHON_USEDEP}]
	>=dev-python/python-slugify-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.23.0[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-3.5.0[${PYTHON_USEDEP}]
"
