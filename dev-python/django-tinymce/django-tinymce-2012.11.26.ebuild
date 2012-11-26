# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=4

EGIT_REPO_URI="https://github.com/aljosa/django-tinymce.git"
EGIT_COMMIT="04986a21e57553a01356c869f84e52e3a0dca324"

inherit distutils eutils git-2

DESCRIPTION="TinyMCE widget for Django"
HOMEPAGE="https://github.com/aljosa/django-tinymce"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

DOCS="docs/* README.md"

src_install() {
#	distutils_python_version
#
#	site_pkgs="$(python_get_sitedir)"
#	export PYTHONPATH="${PYTHONPATH}:${D}/${site_pkgs}"
#	dodir ${site_pkgs}
	distutils_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/testtinymce
}
