# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy pypy3 )

inherit distutils-r1

SRC_URI="https://bitbucket.org/izi/django-admin-tools/get/${PV}.tar.gz -> ${P}.tar.gz"
DESCRIPTION="django-admin-tools is a collection of tools for the django
administration interface, it includes a full featured and customizable
dashboard, a customizable menu bar and tools to make admin ui theming easier."
HOMEPAGE="https://bitbucket.org/izi/django-admin-tools/wiki/Home"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools"

S="${WORKDIR}/izi-django-admin-tools-746357689a8d"

src_install () {
	distutils-r1_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/test_proj
	dodoc AUTHORS CHANGELOG INSTALL LICENSE README
}
