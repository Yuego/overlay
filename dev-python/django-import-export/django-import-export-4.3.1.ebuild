# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION="An extension to the Django web framework that provides
comprehensive version control facilities."

HOMEPAGE="https://github.com/django-import-export/django-import-export"

# SRC_URI="https://github.com/django-import-export/django-import-export/archive/${PV}.tar.gz -> ${P}.tar.gz"
EGIT_REPO_URI="https://github.com/django-import-export/django-import-export.git"
EGIT_COMMIT="d9102cef2cb4684a73fde878d39c667e3696081d"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
RESTRICT="test"

DEPEND="
	>=dev-python/django-4.2[${PYTHON_USEDEP}]
	>=dev-python/tablib-3.7.0[${PYTHON_USEDEP}]
	dev-python/diff-match-patch[${PYTHON_USEDEP}]
"
RDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
