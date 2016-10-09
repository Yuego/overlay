# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit qmake-utils

DESCRIPTION="selective bind Qt to free pascal"
HOMEPAGE="http://users.telenet.be/Jan.Van.hijfte/qtforfpc/fpcqt4.html"
FULL_VERSION="qt4pas-V${PV}_Qt4.5.3"
SRC_URI="
!bindist? ( http://users.telenet.be/Jan.Van.hijfte/qtforfpc/V${PV}/${FULL_VERSION}.tar.gz )
bindist? (
	x86? ( http://users.telenet.be/Jan.Van.hijfte/qtforfpc/V${PV}/bin-${FULL_VERSION}.tar.gz )
	amd64? ( http://users.telenet.be/Jan.Van.hijfte/qtforfpc/V${PV}/bin64-${FULL_VERSION}.tar.gz )
)
"

LICENSE="GPL-2"
SLOT="4"

KEYWORDS="~x86 ~amd64"
IUSE="-bindist"

DEPEND="
	dev-qt/qtcore:4
	dev-qt/qtwebkit:4
	dev-qt/qtgui:4
"
QA_PREBUILT="bindist? ( */libQt4Pas.so.5.2.5 )"

src_unpack(){
	local archive="${FULL_VERSION}"
	if use bindist; then
		if use amd64; then
			archive="bin64-${FULL_VERSION}"
		else
			archive="bin-${FULL_VERSION}"
		fi
	fi
	unpack ${archive}.tar.gz

	cd "${WORKDIR}"
	mv "${archive}" "${PF}"
}

src_prepare(){
	eapply_user

	if ! use bindist; then
		eqmake4 Qt4Pas.pro
	fi
}

src_install(){
	if ! use bindist; then
		default_src_install
	else
		dolib libQt4Pas*
	fi
}
