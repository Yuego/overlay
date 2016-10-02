# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="TinyMCE widget for Django"
HOMEPAGE="https://github.com/aljosa/django-tinymce"

SRC_URI="https://github.com/aljosa/django-tinymce/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

DOCS="docs/* README.rst LICENSE.txt CHANGELOG.rst"

src_install() {
	distutils-r1_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/testtinymce
}
