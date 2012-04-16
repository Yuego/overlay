# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils git-2

DESCRIPTION="Dynamic, any to any, pixel format conversion library"
HOMEPAGE="http://www.gegl.org/babl/"

EGIT_REPO_URI="git://git.gnome.org/babl"
EGIT_COMMIT="180becb47465ca34bd4ba68c2737bef0c06ad284"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"

IUSE=""

DEPEND=">=sys-devel/libtool-1.4
	>=sys-devel/autoconf-2.54
	>=sys-devel/automake-1.7.9"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${PN}

src_compile() {
	./autogen.sh || die "autogen failed"
	econf || die "econf failed"
	emake || die "emake failed"
}

src_install() {
	emake install DESTDIR=${D} || die "emake install failed"
	#dodoc README
}
