# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=flit_scm

inherit distutils-r1 git-r3

DESCRIPTION="Custom autocomplete fields for Django"
HOMEPAGE="https://github.com/codingjoe/django-select2"

#SRC_URI="https://github.com/codingjoe/django-select2/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
EGIT_COMMIT="50c488c0125f571f87e30e480e21446338a1b3cf"
EGIT_REPO_URI="https://github.com/codingjoe/django-select2.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/django-3.2[${PYTHON_USEDEP}]
	>=dev-python/django-appconf-0.6.0[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/flit-core[${PYTHON_USEDEP}]
	dev-python/flit-scm[${PYTHON_USEDEP}]
"
