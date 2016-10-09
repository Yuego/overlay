# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3} pypy pypy3 )

inherit distutils-r1 mercurial

EHG_REPO_URI="https://bitbucket.org/izi/django-admin-tools"
DESCRIPTION="django-admin-tools is a collection of tools for the django
administration interface, it includes a full featured and customizable
dashboard, a customizable menu bar and tools to make admin ui theming easier."
HOMEPAGE="https://bitbucket.org/izi/django-admin-tools/wiki/Home"
LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools"

src_install () {
	distutils-r1_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/test_proj
	dodoc AUTHORS CHANGELOG INSTALL README
}
