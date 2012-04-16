# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils git-2

DESCRIPTION="django-sitetree is a reusable application for Django, introducing site tree, menu and breadcrumbs navigation elements."
HOMEPAGE="https://github.com/idlesign/django-sitetree"
EGIT_REPO_URI="https://github.com/idlesign/django-sitetree.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="sitetree"

src_test() {
	python setup.py test || die "tests failed"
}

src_install () {
	distutils_src_install
	dodoc AUTHORS README CHANGELOG
}
