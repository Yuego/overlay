# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

EGIT_REPO_URI="https://github.com/aljosa/django-tinymce.git"

inherit distutils-r1 git-2

DESCRIPTION="TinyMCE widget for Django"
HOMEPAGE="https://github.com/aljosa/django-tinymce"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

DOCS="docs/* README.md"

src_install() {
	distutils-r1_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/testtinymce
}
