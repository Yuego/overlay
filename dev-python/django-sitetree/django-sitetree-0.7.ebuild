# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1

DESCRIPTION="django-sitetree is a reusable application for Django, introducing site tree, menu and breadcrumbs navigation elements."
HOMEPAGE="http://pypi.python.org/pypi/django-sitetree/0.7"
SRC_URI="http://pypi.python.org/packages/source/d/django-sitetree/django-sitetree-0.7.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools"

DOCS="AUTHORS README CHANGELOG"

