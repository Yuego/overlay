# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils mercurial

EHG_REPO_URI="https://bitbucket.org/izi/django-admin-tools"
DESCRIPTION="django-admin-tools is a collection of tools for the django
administration interface, it includes a full featured and customizable
dashboard, a customizable menu bar and tools to make admin ui theming easier."
HOMEPAGE="https://bitbucket.org/izi/django-admin-tools/wiki/Home"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="admin_tools"

src_test() {
	python setup.py test || die "tests failed"
}

src_install () {
	distutils_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/test_proj
	dodoc AUTHORS CHANGELOG INSTALL LICENSE README
}
