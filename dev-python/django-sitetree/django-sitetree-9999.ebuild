# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="django-sitetree is a reusable application for Django, introducing site tree, menu and breadcrumbs navigation elements."
HOMEPAGE="https://github.com/idlesign/django-sitetree"
EGIT_REPO_URI="https://github.com/idlesign/django-sitetree.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools"

DOCS="AUTHORS README.rst CHANGELOG"
