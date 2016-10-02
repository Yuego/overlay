# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

inherit eutils

DESCRIPTION="Krpano Tools"
HOMEPAGE="http://krpano.com"

if [ "x${PR}" == "xr0" ]; then
	MY_PR=""
	PR_PATH=""
else
	MY_PR="p${PR}"
	PR_PATH="-${MY_PR}"
fi

SRC_URI="
	http://krpano.com/download/download.php?file=krpano${PV//./}${MY_PR}linux32 -> krpano-bin32-${PVR}.tar.gz
	http://krpano.com/download/download.php?file=krpano${PV//./}${MY_PR}linux64 -> krpano-bin64-${PVR}.tar.gz
"

LICENSE="krpano"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RESTRICT="strip"

DEPEND=""
RDEPEND="${DEPEND}
	>=sys-libs/glibc-2.15
"

S="${WORKDIR}/krpano-${PV}${PR_PATH}"
B_DIR="${S}/bin"

src_unpack() {
	ARCH=$(usex amd64 "64" "32")
	unpack "krpano-bin${ARCH}-${PVR}.tar.gz"
}

src_prepare(){
	default_src_prepare
	sed -i "s/krpano Tools/krpano-gui/g" "krpano Tools.sh"
}

# TODO: сделать иконку для GUI
src_install() {
	ARCH=$(usex amd64 "64" "32")
	targetdir="/opt/krpano"

	#BIN
	dosym "${targetdir}/bin/krpanotools" /opt/bin/krpano
	dosym "${targetdir}/bin/krpano-gui" /opt/bin/krpano-gui

	dosym libudev.so "/usr/lib${ARCH}/libudev.so.0"
	dolib lib*

	insinto "${targetdir}/bin/"
	insopts -m0655

	doins krpanotools
	newins "krpano Tools" krpano-gui
	doins .nwpak 
	#Icons
	insinto "${targetdir}/images/"
	newins .converticon convert.png
	newins .encrypticon encrypt.png
	newins .krpanotoolsicon krpano.png
	newins .makepanoicon makepano.png

	#Viewer
	insinto "${targetdir}/viewer/"
	doins viewer/*.js
	doins viewer/*.swf
	
	#Plugins
	insinto "${targetdir}/viewer/plugins"
	doins viewer/plugins/*.js
	doins viewer/plugins/*.swf

	#Docs
	dodoc license.txt
	dodoc releasenotes.txt
}

pkg_postinst(){
	ewarn "Use 'krpano register <code>' command to register your installation"
}
