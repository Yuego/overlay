# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils

ARCH=$(usex amd64 "32" "64")

DESCRIPTION="PanoTour Pro"
HOMEPAGE="http://www.kolor.com"
SRC_URI="http://download.kolor.com/ptp/stable/linux${ARCH}tar -> panotour-pro-${PV}.tar.gz
	http://www.kolor.com/images/stories/download/download-panotour/logo-ptp-128.png	-> ${PN}.png"

LICENSE="as-is"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RESTRICT="strip"

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/PanotourPro_${PV//./}"
S_BIN="${WORKDIR}/${PN}"

src_install() {
	insinto "/opt/${PN}/"

	mkdir "${S_BIN}"
	rm "${S}"/PanotourPro_*.sh
	mv "${S}"/PanotourPro_* "${S_BIN}/panotour-pro"

	doins -r "${S}"/*

	insopts -m0655
	doins "${S_BIN}/panotour-pro"
	dobin "${FILESDIR}/panotour-pro"

	doicon -s 128 "${DISTDIR}/${PN}.png"
	make_desktop_entry ${PN} "Kolor PanoTour Pro ${PV}" "${PN}" "Graphics;"	"MimeType=application/x-kpresenter;"
}
