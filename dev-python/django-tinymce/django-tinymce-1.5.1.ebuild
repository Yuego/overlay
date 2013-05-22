# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=4

inherit distutils

DESCRIPTION="TinyMCE widget for Django"
HOMEPAGE="https://github.com/aljosa/django-tinymce"

VER="release-${PV}"
SRC_URI="https://github.com/aljosa/django-tinymce/archive/${VER}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

DOCS="docs/* README.md"
S="${WORKDIR}/${PN}-${VER}"

src_install() {
	distutils_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/testtinymce
}
