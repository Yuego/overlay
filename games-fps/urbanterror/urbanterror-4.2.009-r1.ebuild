# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/games-fps/urbanterror/urbanterror-4.2.009.ebuild,v 1.1 2012/12/23 16:13:44 hasufell Exp $

EAPI=5
SLOT="4.2"

inherit check-reqs eutils gnome2-utils games

DESCRIPTION="Hollywood tactical shooter based on the ioquake3 engine"
HOMEPAGE="http://www.urbanterror.info/home/"
SRC_URI="http://download.urbanterror.info/urt/42/zips/UrbanTerror42_full_${PV:4:3}.zip
	http://www.ftwgl.com/files/mirror/UrbanTerror42_full_${PV:4:3}.zip
	https://github.com/Barbatos/ioq3-for-UrbanTerror-4/archive/release-4.2.007.tar.gz
	http://upload.wikimedia.org/wikipedia/en/5/56/Urbanterror.svg -> ${PN}-${SLOT}.svg"

LICENSE="GPL-2 Q3AEULA"
KEYWORDS="~amd64 ~x86"
IUSE="+curl debug dedicated openal +sdl server smp vorbis"
RESTRICT="mirror"

RDEPEND="
	!dedicated? (
		virtual/opengl
		curl? ( net-misc/curl )
		openal? ( media-libs/openal )
		sdl? ( media-libs/libsdl[X,audio,joystick,opengl,video] )
		!sdl? ( x11-libs/libX11
			x11-libs/libXext
			x11-libs/libXxf86dga
			x11-libs/libXxf86vm )
		vorbis? ( media-libs/libogg
			media-libs/libvorbis )
	)"
DEPEND="${RDEPEND}
	app-arch/unzip
	dedicated? ( curl? ( net-misc/curl ) )"

S=${WORKDIR}/ioq3-for-UrbanTerror-4-release-4.2.007
S_DATA=${WORKDIR}/UrbanTerror42

CHECKREQS_DISK_BUILD="2700M"
CHECKREQS_DISK_USR="1300M"

pkg_pretend() {
	check-reqs_pkg_pretend

	if ! use dedicated ; then
		if ! use sdl && ! use openal ; then
			ewarn
			ewarn "Sound support disabled. Enable 'sdl' or 'openal' useflag."
			ewarn
		fi
	fi
}

src_prepare() {
	epatch "${FILESDIR}"/${P}-build.patch
}

src_compile() {
	buildit() { use $1 && echo 1 || echo 0 ; }
	nobuildit() { use $1 && echo 0 || echo 1 ; }

	emake \
		ARCH=$(usex amd64 "x86_64" "i386") \
		DEFAULT_BASEDIR="${GAMES_DATADIR}/${PN}-${SLOT}" \
		BUILD_CLIENT=$(nobuildit dedicated) \
		BUILD_CLIENT_SMP=$(usex smp "$(nobuildit dedicated)" "0") \
		BUILD_SERVER=$(usex dedicated "1" "$(buildit server)") \
		USE_SDL=$(buildit sdl) \
		USE_OPENAL=$(buildit openal) \
		USE_OPENAL_DLOPEN=0 \
		USE_CURL=$(buildit curl) \
		USE_CURL_DLOPEN=0 \
		USE_CODEC_VORBIS=$(buildit vorbis) \
		USE_LOCAL_HEADERS=0 \
		Q="" \
		$(usex debug "debug" "release")
}

src_install() {
	local my_arch=$(usex amd64 "x86_64" "i386")

	doicon -s scalable "${DISTDIR}"/${PN}-${SLOT}.svg
	dodoc ChangeLog README md4-readme.txt
	dodoc "${S_DATA}"/q3ut4/readme42.txt
	insinto "${GAMES_DATADIR}"/${PN}-${SLOT}/q3ut4
	doins "${S_DATA}"/q3ut4/*.pk3

	if use !dedicated ; then
		newgamesbin build/$(usex debug "debug" "release")-linux-${my_arch}/Quake3-UrT$(usex smp "-smp" "").${my_arch} ${PN}-${SLOT}
		make_desktop_entry ${PN}-${SLOT} "UrbanTerror ${SLOT}" ${PN}-${SLOT}
	fi

	if use dedicated || use server ; then
		newgamesbin build/$(usex debug "debug" "release")-linux-${my_arch}/Quake3-UrT-Ded.${my_arch} ${PN}-${SLOT}-dedicated
		docinto examples
		dodoc "${S_DATA}"/q3ut4/{server.cfg,mapcycle.txt}
	fi

	prepgamesdirs
}

pkg_preinst() {
	games_pkg_preinst
	gnome2_icon_savelist
}

pkg_postinst() {
	games_pkg_postinst
	gnome2_icon_cache_update

	if use openal && ! use dedicated ; then
		einfo
		elog "You might need to set:"
		elog "  seta s_useopenal \"1\""
		elog "in your ~/.q3a/q3ut4/q3config.cfg for openal to work."
		einfo
	fi
}

pkg_postrm() {
	gnome2_icon_cache_update
}
