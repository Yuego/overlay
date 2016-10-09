# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit eutils

ABBREV="doublecmd"
DESCRIPTION="Cross Platform file manager."
HOMEPAGE="http://doublecmd.sourceforge.net/"

SRC_URI="
		x86?	( gtk? ( mirror://sourceforge/${ABBREV}/${ABBREV}-${PV}.gtk2.i386.tar.xz )
				  qt4?  ( mirror://sourceforge/${ABBREV}/${ABBREV}-${PV}.qt.i386.tar.xz ) )
		amd64?	( gtk? ( mirror://sourceforge/${ABBREV}/${ABBREV}-${PV}.gtk2.x86_64.tar.xz )
				  qt4?  ( mirror://sourceforge/${ABBREV}/${ABBREV}-${PV}.qt.x86_64.tar.xz ) )
"

RESTRICT="mirror"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="qt4 gtk"
REQUIRED_USE=" ^^ ( qt4 gtk )"

QA_PREBUILT="
	*/doublecmd
	*/libQt4Pas.so.5
"

RDEPEND="
	sys-apps/dbus
	dev-libs/glib:2
	sys-libs/ncurses:0
	x11-libs/libX11
	gtk? ( x11-libs/gtk+:2 )
	qt4? (
		dev-qt/qtgui:4
		dev-qt/qtwebkit:4
	)
"

S="${WORKDIR}/${ABBREV}"

src_prepare(){
	eapply_user
	# no save configs in Program Dir
	sed -e '/<UseConfigInProgramDir>/s/True/False/' -i doublecmd.xml
}

src_install(){
	diropts -m0755
	dodir /usr/share

	doicon -s 48 ${ABBREV}.png
	rm ${ABBREV}.png

	rsync -a "${S}/" "${D}/usr/share/${ABBREV}" || die "Unable to copy files"

	dosym ../share/${ABBREV}/${ABBREV} /usr/bin/${ABBREV}

	make_desktop_entry ${ABBREV} "Double Commander" "${ABBREV}" "Utility;" || die "Failed making desktop entry!"

	if use qt4; then
		newlib.so libQt4Pas.so.5 libQt4Pas.so.5
	fi
}
