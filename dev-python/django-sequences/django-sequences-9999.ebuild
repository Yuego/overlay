# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Django database sequences"
HOMEPAGE="https://github.com/aaugustin/django-sequences"

EGIT_REPO_URI="https://github.com/aaugustin/django-sequences.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-3.2[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

DISTUTILS_USE_SETUPTOOLS=pyproject.toml
