# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=4

EGIT_REPO_URI="https://github.com/miracle2k/django-assets.git"

inherit distutils eutils git-2

DESCRIPTION="Django webassets integration."
HOMEPAGE="https://github.com/miracle2k/django-assets"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

DOCS="docs/* README.rst"

src_install() {
#	distutils_python_version
#
#	site_pkgs="$(python_get_sitedir)"
#	export PYTHONPATH="${PYTHONPATH}:${D}/${site_pkgs}"
#	dodir ${site_pkgs}
	distutils_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/tests
}
