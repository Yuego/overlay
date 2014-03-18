# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit eutils pax-utils rpm user versionator

DESCRIPTION="Server component of 1C ERP system"
HOMEPAGE="http://v8.1c.ru/"

MY_PV="$(replace_version_separator 3 '-' )"
MY_PN="1C_Enterprise83-server"

SRC_URI="x86? ( ${MY_PN}-${MY_PV}.i386.rpm
	    nls? ( ${MY_PN}-nls-${MY_PV}.i386.rpm ) )
	amd64? ( ${MY_PN}-${MY_PV}.x86_64.rpm
	    nls? ( ${MY_PN}-nls-${MY_PV}.x86_64.rpm ) )"

SLOT="$(get_version_component_range 1-2)"
LICENSE="1CEnterprise_en"
KEYWORDS="amd64 x86"
RESTRICT="fetch strip"

IUSE="postgres +fontconfig +nls pax_kernel"

RDEPEND="~app-office/1C_Enterprise-common-${PV}:${SLOT}
	postgres? ( dev-db/postgresql-server[1c] )
	fontconfig? ( gnome-extra/libgsf
			app-text/ttf2pt1
			media-gfx/imagemagick[corefonts]
			dev-db/unixODBC ) "
DEPEND="${RDEPEND}"

S="${WORKDIR}"

QA_TEXTRELS_x86="opt/1C/v${SLOT}/i386/libociicus.so
	    opt/1C/v${SLOT}/i386/image.so
	    opt/1C/v${SLOT}/i386/libnnz10.so
	    opt/1C/v${SLOT}/i386/libclntsh.so.10.1"

QA_TEXTRELS_amd64="opt/1C/v${SLOT}/x86_64/libociicus.so
	    opt/1C/v${SLOT}/x86_64/image.so
	    opt/1C/v${SLOT}/x86_64/libnnz10.so
	    opt/1C/v${SLOT}/x86_64/libclntsh.so.10.1"


QA_EXECSTACK_x86="opt/1C/v${SLOT}/i386/libociicus.so
	    opt/1C/v${SLOT}/i386/libnnz10.so
	    opt/1C/v${SLOT}/i386/libclntsh.so.10.1"

QA_EXECSTACK_amd64="opt/1C/v${SLOT}/x86_64/libociicus.so
	    opt/1C/v${SLOT}/x86_64/libnnz10.so
	    opt/1C/v${SLOT}/x86_64/libclntsh.so.10.1"

USER=usr1cv$(delete_all_version_separators ${SLOT})
GROUP=grp1cv$(delete_all_version_separators ${SLOT})

pkg_setup() {
	enewgroup ${GROUP}
	enewuser ${USER} -1 /bin/bash /home/${USER} ${GROUP}
	chown -R :${GROUP} /home/${USER}
}

src_prepare() {
	epatch "${FILESDIR}/init.d.patch"
}

src_install() {
#	epatch "${FILESDIR}/init.d.patch"
	if use pax_kernel; then
	    local i
	    local binaries=(
		rphost
		ragent
		rmngr
	    )
	    use x86 && i="i386"
	    use amd64 && i="x86_64"
	    cd "${WORKDIR}/opt/1C/v${SLOT}/${i}/"
	    pax-mark m "${binaries[@]}"
	fi
	dodir /opt
	mv "${WORKDIR}"/opt/* "${D}"/opt
	doinitd "${WORKDIR}"/etc/init.d/srv1cv$(delete_all_version_separators ${SLOT})
}

pkg_postinst() {
	if use fontconfig ; then
		elog "You can config fonts for 1C ERP system by exec"
		if use x86 ; then
		    elog "/opt/1C/v${SLOT}/i386/utils/config_server /path/to/font/dir/corefonts"
		elif use amd64 ; then
		    elog "/opt/1C/v${SLOT}/x86_64/utils/config_server /path/to/font/dir/corefonts"
		fi
	fi
	if use postgres ; then
		elog "Perhaps you should add locale en_US in /etc/localegen and"
		elog "regenerate locales to use 1C with postgres."
	fi
}
