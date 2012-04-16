# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $
EAPI="2"

ESVN_REPO_URI="http://django-grappelli.googlecode.com/svn/trunk/"

inherit distutils eutils subversion webapp

WEBAPP_MANUAL_SLOT="yes"

DESCRIPTION="A jazzy skin for the Django admin interface"
HOMEPAGE="http://code.google.com/p/django-grappelli/"
LICENSE="BSD-4"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

src_install() {
	distutils_src_install

	insinto "${MY_HTDOCSDIR#${EPREFIX}}"
	doins -r grappelli/media/* || die "doins failed"

	webapp_src_instal
}
