# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit eutils pax-utils rpm user versionator

DESCRIPTION="Native linux client of 1C ERP system"
HOMEPAGE="http://v8.1c.ru/"

MY_PV="$(replace_version_separator 3 '-' )"
MY_PN="1C_Enterprise83-client"

SRC_URI="amd64? ( ${MY_PN}-${MY_PV}.x86_64.rpm
		nls? ( ${MY_PN}-nls-${MY_PV}.x86_64.rpm ) )
		"

SLOT=$(get_version_component_range 1-2)
LICENSE="1CEnterprise_en"
KEYWORDS="amd64"
RESTRICT="fetch strip"

IUSE="+nls"

RDEPEND="~app-office/1C_Enterprise-common-${PV}:${SLOT}
	~app-office/1C_Enterprise-server-${PV}:${SLOT}
	gui-libs/1c-libwebkitgtk:${SLOT}
	x11-libs/libSM
	x11-libs/libX11
	dev-libs/atk
	sys-libs/glibc
	>=x11-libs/cairo-1.0
	>=sys-libs/e2fsprogs-libs-1.41
	net-print/cups
	media-libs/fontconfig
	media-libs/freetype
	>=sys-devel/gcc-3.4
	x11-libs/gtk+:2
	dev-libs/glib:2
	app-crypt/mit-krb5
	x11-libs/pango
	net-libs/libsoup:2.4
	x11-libs/wxGTK:3.0
	sys-libs/zlib"

DEPEND="${RDEPEND}"

S="${WORKDIR}"

src_install() {
	dodir /opt /usr
	dodir /usr/share
	mv "${WORKDIR}"/opt/* "${D}"/opt
	mv "${WORKDIR}"/usr/share/icons "${D}"/usr/share
	domenu "${WORKDIR}"/usr/share/applications/{1cv8,1cv8c,1cestart}.desktop
#	name=libMagickWand.so
#	use hdri && name=libMagickWand-6.Q16HDRI.so
#	use x86 && dosym /usr/"$(get_libdir)"/"$name" /opt/1C/v"${SLOT}"/i386/libWand.so
#	use amd64 && dosym /usr/"$(get_libdir)"/"$name" /opt/1C/v"${SLOT}"/x86_64/libWand.so
}
