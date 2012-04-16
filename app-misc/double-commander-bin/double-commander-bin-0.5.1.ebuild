# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

#inherit 

DESCRIPTION="Double Commander is a cross platform open source file manager with
two panels side by side. It is inspired by Total Commander and features some new
ideas."
HOMEPAGE="http://doublecmd.sourceforge.net/"

#MY_VER=$(get_version_component_range 1)$(get_version_component_range 2)$(get_version_component_range 3)

#MY_REV="$(get_version_component_range 4)"

#ESVN_REPO_URI="svn://svn.icculus.org/quake3/trunk"
#ESVN_REVISION="${MY_REV}"
SRC_URI="http://downloads.sourceforge.net/project/doublecmd/DC%20for%20Linux%2032%20bit/Double%20Commander%200.5.1%20beta/doublecmd-0.5.1-1.qt.i386.tar.bz2?r=http%3A%2F%2Fdoublecmd.sourceforge.net%2Fsite%2Frus%2Fdownload.html&ts=1318769211&use_mirror=citylan"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+client +curl openal server speex vorbis"

COMMON_DEPEND="
	client? (
		media-libs/libsdl[X,opengl]
		openal? ( media-libs/openal )
		vorbis? ( media-libs/libogg media-libs/libvorbis )
	)
	curl? ( net-misc/curl )
	speex? ( media-libs/speex ) "
DEPEND="${COMMON_DEPEND}
	>media-libs/freetype-2
	app-arch/p7zip
	app-arch/unzip
	dev-util/pkgconfig
	media-libs/netpbm"
RDEPEND="${COMMON_DEPEND}"

S=${WORKDIR}/vanilla-untouched

src_unpack() {
	subversion_src_unpack
	unpack ${A}
}

src_prepare() {
	patch -p0 < "../ioq3-${MY_REV}-urt-$(get_version_component_range 4)-git.patch"
	mv ../q3ut4/* ../UrbanTerror/q3ut4
	einfo "remove bundled include files"
	rm -rf code/{SDL12,libs/win{32,64}} || die

	# fix case sensitivity and remove shipped binaries
	local my_utdir=${WORKDIR}/UrbanTerror
	mv "${my_utdir}/q3ut4/demos/tutorial.dm_68" "${my_utdir}/q3ut4/demos/TUTORIAL.dm_68" || die
	rm -f "${my_utdir}"/io{UrbanTerror,UrTded,}.{exe,i386,x86_64} || die
}

src_compile() {
	buildit() { use $1 && echo 1 || echo 0 ; }

	emake \
		$(use amd64 && echo ARCH=x86_64 || echo ARCH=i386) \
		BUILD_SERVER=$(buildit server) \
		BUILD_CLIENT=$(buildit client) \
		BUILD_CLIENT_SMP=$(buildit client) \
		CC="$(tc-getCC)" \
		DEFAULT_BASEDIR="${GAMES_DATADIR}/${PN}" \
		USE_CODEC_VORBIS=$(buildit vorbis) \
		USE_OPENAL=$(buildit openal) \
		USE_CURL=$(buildit curl) \
		USE_VOIP=$(buildit speex) \
		USE_INTERNAL_SPEEX=0 \
		USE_INTERNAL_ZLIB=0 \
		USE_LOCAL_HEADERS=0 \
		release || die
	#BASE_CFLAGS="${CFLAGS} -DUSE_ICON -DPRODUCT_VERSION=\\\"$(VERSION)\\\"" \
}

src_install() {
	local my_arch=i386
	use amd64 && my_arch=x86_64

	if use client || use server ; then # just kidding
		insinto /usr/share/pixmaps
		doins "${DISTDIR}"/${PN}.svg || die
	fi

	if use client ; then
		newgamesbin build/release-linux-${my_arch}/ioquake3-smp.${my_arch} ${PN} || die
		make_desktop_entry ${PN} "UrbanTerror" ${PN}
	fi

	if use server ; then
			newgamesbin build/release-linux-${my_arch}/ioquake3-smp.${my_arch} ${PN}-dedicated || die
			make_desktop_entry ${PN}-dedicated "UrbanTerror dedicated" ${PN}

			insinto "${GAMES_DATADIR}"/${PN}/q3ut4
			doins dedicated.cfg || die
	fi

	dodoc ChangeLog NOTTODO README TODO {md4,voip}-readme.txt || die

	cd "${WORKDIR}"/UrbanTerror/q3ut4 || die

	insinto "${GAMES_DATADIR}"/${PN}/q3ut4
	doins -r *.pk3 autoexec.cfg demos/ description.txt mapcycle.txt screenshots/ \
		glsl/ scripts/ textures/ || die

	prepgamesdirs
}
