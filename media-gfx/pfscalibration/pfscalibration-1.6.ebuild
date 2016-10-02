# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit autotools

DESCRIPTION="Scripts and programs for photometric calibration"
HOMEPAGE="http://pfstools.sourceforge.net/pfscalibration.html"
SRC_URI="mirror://sourceforge/pfstools/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND=">=media-gfx/pfstools-1.0"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i -e '/^CXXFLAGS/d' configure.ac || die
	eautoreconf
}

src_configure() {
	econf $(use_enable debug)
}

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc ChangeLog AUTHORS README || die
}
