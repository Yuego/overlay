# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{10..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION="AB Testing Framework for Django"
HOMEPAGE="https://github.com/mixcloud/django-experiments"

EGIT_REPO_URI="https://github.com/mixcloud/django-experiments.git"
EGIT_COMMIT="df6fe5d2e83a96539206d4bdcac4bf6e3d38d2ca"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/django-4.2[${PYTHON_USEDEP}]
	>=dev-python/django-modeldict-yplan-1.5.0[${PYTHON_USEDEP}]
	>=dev-python/redis-2.4.9[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
