# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/jemalloc/Attic/jemalloc-3.1.0.ebuild,v 1.2 2012/11/25 12:46:43 anarchy dead $

EAPI=4

inherit autotools eutils

DESCRIPTION="Jemalloc is a general-purpose scalable concurrent allocator"
HOMEPAGE="http://www.canonware.com/jemalloc/"
SRC_URI="http://www.canonware.com/download/${PN}/${P}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm ~hppa ~ppc ~ppc64 ~x86"

IUSE="debug static-libs stats"

DEPEND=""
RDEPEND=""

src_prepare() {
	epatch \
		"${FILESDIR}/${PN}-3.0.0-strip-optimization.patch" \
		"${FILESDIR}/${PN}-3.0.0-no-pprof.patch" \
		"${FILESDIR}/${PN}-3.0.0_fix_html_install.patch"

	eautoreconf
}

src_configure() {
	econf \
		--with-jemalloc-prefix=j \
		$(use_enable debug) \
		$(use_enable stats)
}

src_install() {
	emake DESTDIR="${ED}" install || die
	dodoc ChangeLog README
	dohtml doc/jemalloc.html

	use static-libs || find "${ED}" -name '*.a' -exec rm -f {} +
}
