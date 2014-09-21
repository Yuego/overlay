# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit eutils rpm versionator

DESCRIPTION="Web component of 1C ERP system"
HOMEPAGE="http://v8.1c.ru/"

MY_PV="$(replace_version_separator 3 '-' )"
MY_PN="1C_Enterprise83-ws"
SRC_URI="x86? ( ${MY_PN}-${MY_PV}.i386.rpm
	    nls? ( ${MY_PN}-nls-${MY_PV}.i386.rpm ) )
	amd64? ( ${MY_PN}-${MY_PV}.x86_64.rpm
	    nls? ( ${MY_PN}-nls-${MY_PV}.x86_64.rpm ) )"

SLOT="$(get_version_component_range 1-2)"
LICENSE="1CEnterprise_en"
KEYWORDS="amd64 x86"
RESTRICT="fetch strip"
IUSE="+nls pax_kernel"

RDEPEND="~app-office/1C_Enterprise-common-${PV}:${SLOT}"
DEPEND="${RDEPEND}"

S="${WORKDIR}"

src_install() {
	dodir /opt
	mv "${WORKDIR}"/opt/* "${D}"/opt
}

pkg_postinst() {
	elog "You need to configure fonts for the web compoment of 1C ERP system by exec"
	if use x86 ; then
	    elog "/opt/1C/v${SLOT}/i386/utils/config_server /usr/share/fonts/corefont"
	elif use amd64 ; then
	    elog "/opt/1C/v${SLOT}/x86_64/utils/config_server /usr/share/fonts/corefont"
	fi
	elog "or you may get an error \"Failed to initialize graphics subsystem!\""
	if use pax_kernel ; then
	    elog ""
	    elog "You may have to disable MPROTECT for the /usr/sbin/apache2 binary"
	    elog "Otherwise, the PAX-kernel will not allow the web-server to work"
	    elog "with 1C web-component apache module."
	fi
}
