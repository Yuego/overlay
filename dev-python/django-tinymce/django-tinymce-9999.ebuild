# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

EGIT_REPO_URI="https://github.com/aljosa/django-tinymce.git"

inherit distutils-r1 git-r3

DESCRIPTION="TinyMCE widget for Django"
HOMEPAGE="https://github.com/aljosa/django-tinymce"
LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"

DOCS="docs/* README.rst LICENSE.txt CHANGELOG.rst"

src_install() {
	distutils-r1_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/testtinymce
}
