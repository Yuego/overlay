# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit eutils pax-utils rpm user versionator

DESCRIPTION="Native linux client of 1C ERP system"
HOMEPAGE="http://v8.1c.ru/"

MY_PV="$(replace_version_separator 3 '-' )"
MY_PN="1C_Enterprise83-client"

SRC_URI="x86? ( ${MY_PN}-${MY_PV}.i386.rpm
	    nls? ( ${MY_PN}-nls-${MY_PV}.i386.rpm ) )
	amd64? ( ${MY_PN}-${MY_PV}.x86_64.rpm
	    nls? ( ${MY_PN}-nls-${MY_PV}.x86_64.rpm ) )"

SLOT=$(get_version_component_range 1-2)
LICENSE="1CEnterprise_en"
KEYWORDS="~amd64 ~x86"
RESTRICT="fetch strip"

IUSE="+nls hdri"

RDEPEND="~app-office/1C_Enterprise-common-${PV}:${SLOT}
	~app-office/1C_Enterprise-server-${PV}:${SLOT}
	>=dev-libs/icu-4.6
	net-libs/webkit-gtk:2
	app-crypt/mit-krb5
	media-gfx/imagemagick[hdri=]
	net-print/cups
	x11-libs/libSM
	dev-libs/atk
	x11-libs/libXxf86vm
	>=sys-libs/e2fsprogs-libs-1.41
	>=x11-libs/cairo-1.0
	sys-libs/glibc:2.2
	>=sys-devel/gcc-3.4
	x11-libs/gtk+:2
	x11-libs/gdk-pixbuf:2
	dev-libs/glib:2
	net-libs/libsoup:2.4
	sys-libs/zlib"

DEPEND="${RDEPEND}"

S="${WORKDIR}"

src_install() {
	dodir /opt /usr
	mv "${WORKDIR}"/opt/* "${D}"/opt
	domenu "${WORKDIR}"/usr/share/applications/{1cv8,1cv8c,1cestart}.desktop
	name=libMagickWand.so
	use hdri && name=libMagickWand-6.Q16HDRI.so
	use x86 && dosym /usr/"$(get_libdir)"/"$name" /opt/1C/v"${SLOT}"/i386/libWand.so
	use amd64 && dosym /usr/"$(get_libdir)"/"$name" /opt/1C/v"${SLOT}"/x86_64/libWand.so
}
