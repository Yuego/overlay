# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="An extension to the Django web framework that provides
comprehensive version control facilities."

HOMEPAGE="https://github.com/django-import-export/django-import-export"
SRC_URI="https://github.com/django-import-export/django-import-export/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="
	>=dev-python/django-2.0[${PYTHON_USEDEP}]
	>=dev-python/tablib-0.14.0[${PYTHON_USEDEP}]
	dev-python/diff-match-patch[${PYTHON_USEDEP}]
"
RDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
