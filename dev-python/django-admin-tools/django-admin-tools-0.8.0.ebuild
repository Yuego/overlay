# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1

SRC_URI="https://github.com/django-admin-tools/django-admin-tools/archive/v${PV}.tar.gz -> ${P}.tar.gz"

DESCRIPTION="django-admin-tools is a collection of tools for the django
administration interface, it includes a full featured and customizable
dashboard, a customizable menu bar and tools to make admin ui theming easier."
HOMEPAGE="https://bitbucket.org/izi/django-admin-tools/wiki/Home"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

#S="${WORKDIR}/izi-django-admin-tools-746357689a8d"

src_install () {
	distutils-r1_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/test_proj
	dodoc AUTHORS CHANGELOG INSTALL README.rst
}
