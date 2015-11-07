# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit eutils rpm versionator

DESCRIPTION="Configurations Storage component of 1C ERP system"
HOMEPAGE="http://v8.1c.ru/"

MY_PV="$(replace_version_separator 3 '-' )"
MY_PN="1C_Enterprise83-crs"

SRC_URI="x86? ( ${MY_PN}-${MY_PV}.i386.rpm
	nls? ( 1C_Enterprise83-common-nls-${MY_PV}.i386.rpm ) )"

SLOT="$(get_version_component_range 1-2)"
LICENSE="1CEnterprise_en"
KEYWORDS="amd64 x86"
RESTRICT="fetch strip"
IUSE="+nls"

RDEPEND="~app-office/1C_Enterprise-common-${PV}:${SLOT}
	~app-office/1C_Enterprise-server-${PV}:${SLOT}"
DEPEND="${RDEPEND}"

S="${WORKDIR}"

src_install() {
	dodir /opt
	mv "${WORKDIR}"/opt/* "${D}"/opt
}
