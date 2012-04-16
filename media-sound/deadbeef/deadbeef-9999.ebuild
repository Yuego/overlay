# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

if [[ ${PV} = *9999* ]] ; then
	EGIT_REPO_URI="git://deadbeef.git.sourceforge.net/gitroot/deadbeef/deadbeef"
	EGIT_BRANCH="master"
	GIT_ECLASS="git-2"
fi

inherit fdo-mime ${GIT_ECLASS}

if [[ ${PV} = *9999* ]] ; then
	SRC_URI=""
	KEYWORDS=""
else
	SRC_URI="mirror://sourceforge/${PN}/${PN}-${PV}.tar.bz2"
	KEYWORDS="~x86 ~amd64"
fi

DESCRIPTION="foobar2k-like music player"
HOMEPAGE="http://deadbeef.sourceforge.net/"

LICENSE="GPL-2
	LGPL-2.1
	ZLIB
	ao? ( BSD XMAME )
	dumb? ( DUMB-0.9.2 )
	shn? ( shorten )"
SLOT="0"
IUSE="adplug aac alsa ao ape cdda cover cover-imlib2 dts dumb converter curl ffmpeg flac gme gtk2 gtk3
	hotkeys lastfm m3u midi mms mono2stereo mp3 musepack nls notify nullout oss psf pulseaudio rpath
	shellexec shn sid sndfile src static supereq threads tta vorbis vtx wavpack zip"

REQUIRED_USE="converter? ( gtk2 )
	cover? ( curl )
	lastfm? ( curl )"

RDEPEND="aac? ( media-libs/faad2 )
	alsa? ( media-libs/alsa-lib )
	cdda? ( dev-libs/libcdio media-libs/libcddb )
	cover? ( cover-imlib2? ( media-libs/imlib2 )
		!cover-imlib2? ( virtual/jpeg media-libs/libpng ) )
	ffmpeg? ( media-video/ffmpeg )
	flac? ( media-libs/flac )
	gtk2? ( x11-libs/gtk+:2 )
	gtk3? ( x11-libs/gtk+:3 )
	lastfm? ( net-misc/curl )
	notify? ( sys-apps/dbus )
	midi? ( media-sound/timidity-freepats )
	mms? ( media-libs/libmms )
	mp3? ( media-libs/libmad )
	musepack? ( media-sound/musepack-tools )
	pulseaudio? ( media-sound/pulseaudio )
	sndfile? ( media-libs/libsndfile )
	src? ( media-libs/libsamplerate )
	vorbis? ( media-libs/libvorbis )
	wavpack? ( media-sound/wavpack )
	zip? ( dev-libs/libzip
		sys-libs/zlib )"

DEPEND="${RDEPEND}
	nls? ( virtual/libintl dev-util/intltool )"

pkg_setup() {
	if use ao || use uade2 && use static ; then
		die "ao and uade2 plugins can't be builded statically"
	fi
}


src_prepare() {
	if [[ ${PV} = *9999* ]] ; then
	sh autogen.sh
	fi

	if use midi ; then
		# set default gentoo path
		sed -e 's;/etc/timidity++/timidity-freepats.cfg;/usr/share/timidity/freepats/timidity.cfg;g' \
			-i "${S}/plugins/wildmidi/wildmidiplug.c"
	fi
}

src_configure() {
	my_config="--disable-portable
		--docdir=/usr/share/doc/${PF}
		$(use_enable alsa)
		$(use_enable aac)
		$(use_enable adplug)
		$(use_enable ape ffap)
		$(use_enable cdda)
		$(use_enable converter)
		$(use_enable dts dca)
		$(use_enable dumb)
		$(use_enable ffmpeg)
		$(use_enable flac)
		$(use_enable gtk2)
		$(use_enable gtk3)
		$(use_enable gme)
		$(use_enable hotkeys)
		$(use_enable midi wildmidi)
		$(use_enable m3u)
		$(use_enable mms)
		$(use_enable mono2stereo)
		$(use_enable mp3 mad)
		$(use_enable musepack)
		$(use_enable nls)
		$(use_enable notify)
		$(use_enable nullout)
		$(use_enable oss)
		$(use_enable psf)
		$(use_enable pulseaudio pulse)
		$(use_enable rpath)
		$(use_enable shellexec)
		$(use_enable shn)
		$(use_enable sid)
		$(use_enable sndfile)
		$(use_enable src)
		$(use_enable static)
		$(use_enable static staticlink)
		$(use_enable supereq)
		$(use_enable threads)
		$(use_enable tta)
		$(use_enable vorbis)
		$(use_enable vtx)
		$(use_enable wavpack)
		$(use_enable zip vfs-zip)"

#	if use cover || use lastfm ; then
#		my_config="${my_config}
#			--enable-vfs-curl
#			$(use_enable cover artwork)
#			$(use_enable cover-imlib2 artwork-imlib2)
#			$(use_enable lastfm lfm)"
#	else
#		my_config="${my_config}
#			$(use_enable cover artwork)
#			$(use_enable cover-imlib2 artwork-imlib2)
#			$(use_enable curl vfs-curl)
#			$(use_enable lastfm lfm)"
#	fi

	econf ${my_config}
}

src_compile() {
	emake

	if use ao ; then
		cd ${S}/plugins/ao
		emake
	fi

#	if use uade2 ; then
#		cd ${S}/plugins/uade2
#		emake
#	fi
}

src_install() {
	PORTAGE_DECOMPRESS_SKIP+=( "/usr/share/doc/${PF}" )

	emake DESTDIR="${D}" install

	if use ao ; then
		insinto /usr/$(get_libdir)/${PN}
		doins ${S}/plugins/ao/*.so
	fi

#	if use uade2 ; then
#		insinto /usr/$(get_libdir)/${PN}
#		doins ${S}/plugins/uade2/*.so
#	fi
}

pkg_postinst() {
	if use midi ; then
		einfo "enable manually freepats support for timidity via"
		einfo "eselect timidity set --global freepats"
	fi
}
