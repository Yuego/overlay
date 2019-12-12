# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit rpm desktop

MY_P=${P}-${PR#r}
SRC_URI="https://teams.microsoft.com/downloads -> ${MY_P}.x86_64.rpm"
DESCRIPTION="Teams native Linux client"
HOMEPAGE="https://teams.microsoft.com"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="fetch"

DEPEND=""



S=${WORKDIR}
QA_PREBUILT="/usr/share/teams/teams /usr/share/teams/libffmpeg.so 
	/usr/share/teams/libGLESv2.so /usr/share/teams/libEGL.so 
	/usr/share/teams/swiftshader/libGLESv2.so /usr/share/teams/swiftshader/libEGL.so
	/usr/share/teams/resources/app.asar.unpacked/node_modules/slimcore/bin/slimcore.node
	/usr/share/teams/resources/app.asar.unpacked/node_modules/slimcore/bin/sharing-indicator.node "

src_unpack () {
     rpm_src_unpack ${A}
}


src_install () {


	
	dobin usr/bin/${PN}
	doicon usr/share/pixmaps/${PN}.png
	insinto usr/share
	fperms +x usr/share/teams/teams
	doins -r usr/share/${PN}
	domenu usr/share/applications/${PN}.desktop
	
	
}

pkg_postinst() {
	xdg_desktop_database_update
}

pkg_postrm() {
	xdg_desktop_database_update
}
