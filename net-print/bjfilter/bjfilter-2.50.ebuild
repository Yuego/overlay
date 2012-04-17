# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# This ebuild come from http://bugs.gentoo.org/show_bug.cgi?id=128560 - The site http://gentoo.zugaina.org/ only host a copy.
# Small modifications by Ycarus

# Inspired by
#	http://forums.gentoo.org/viewtopic-t-430913.html
#	the file bjfiler-common.spec (download SRC_URI)
#	The Ebuild Howto (gentoo.org)

# Changelog since last bugzilla upload
#
# a little compactification
# use amd64 && append-flags -L/emul/linux/x86/lib -L/emul/linux/x86/usr/lib -L/usr/lib32 
#
# With this change and the emul-linux-x86-bjdeps package (#bug 129352) it now works on AMD64 too! :)

inherit eutils rpm flag-o-matic multilib

DESCRIPTION="Canon Bubble Jet Printer Driver for Linux (Pixus/Pixma-Series)."
HOMEPAGE="ftp://download.canon.jp/pub/driver/bj/linux/"
RESTRICT="nomirror"

SRC_URI="${HOMEPAGE}${PN}-common-${PV}-2.src.rpm"
LICENSE="as-is" # GPL-2 source and proprietary binaries

SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="amd64
	bjtools
	pixusip3100
	pixusip4100
	pixusip8600
	pixmaip1000
	pixmaip1500"
	
DEPEND="virtual/ghostscript
	>=net-print/cups-1.1.14
	!amd64? ( sys-libs/glibc
		>=dev-libs/popt-1.6
		>=media-libs/tiff-3.4
		>=media-libs/libpng-1.0.9 )
	amd64? ( >=app-emulation/emul-linux-x86-bjdeps-0.1
		app-emulation/emul-linux-x86-compat
		app-emulation/emul-linux-x86-baselibs )
	bjtools? ( !amd64? ( >=gnome-base/libglade-0.6
			>=dev-libs/libxml-1.8
			>=x11-libs/gtk+-1.2 )
		amd64? ( >=app-emulation/emul-linux-x86-bjdeps-0.2
			app-emulation/emul-linux-x86-gtklibs ) )"

# Dependencies
#	information by canon	associated x86 packages		AMD64
# always:
#	>=libcups-1.1*		>=net-print/cups-1.1.14		emul-linux-x86-baselibs
#	>=libpopt-1.4*		>=dev-libs/popt-1.4		>=emul-linux-x86-bjdeps-0.1 (available at bugs.gentoo.org)
#	>=libm-6.0		sys-libs/glibc			emul-linux-x86-compat
#	>=libdl-2.0		sys-libs/glibc			emul-linux-x86-compat
#	>=libtiff-3.4		>=media-libs/tiff-3.4		emul-linux-x86-baselibs
#	>=libpng-1.0.9		>=media-libs/libpng-1.0.9	emul-linux-x86-baselibs
#	>=cups-1.1.14		>=net-print/cups-1.1.14		emul-linux-x86-baselibs
#	>=ghostscript-5.50	virtual/ghostscript		virtual/ghostscript
# if use bjtools:
#	>=gtk+-1.2*		>=x11-libs/gtk+-1.2		emul-linux-x86-gtklibs
#	>=libpopt-1.6*		>=dev-libs/popt-1.6		>=emul-linux-x86-bjdeps-0.1 (available at bugs.gentoo.org)
#	>=libglade-0.6*		>=gnome-base/libglade-0.6	>=emul-linux-x86-bjdeps-0.2
#	>=libxml-1.8*		>=dev-libs/libxml-1.8		>=emul-linux-x86-bjdeps-0.2

# Table of supported Printers and it's IDs
# 	driver name	printers ID	probably compatible printers

_pr1="pixusip3100"	_prid1="218"	_prcomp1="i560 i850 iP3000 MP730"
_pr2="pixusip4100"	_prid2="221"	_prcomp2="i865 iP4000 iP5000 MP750 MP780"
_pr3="pixusip8600"	_prid3="238"	_prcomp3="?"
_pr4="pixmaip1000"	_prid4="230"	_prcomp4="i250 i320 i350"
_pr5="pixmaip1500"	_prid5="214"	_prcomp5="iP2000"


###
#   Standard Ebuild-functions
###

pkg_setup() {
	use amd64 && export ABI=x86
	use amd64 && append-flags -L/emul/linux/x86/lib -L/emul/linux/x86/usr/lib -L/usr/lib32 

	_prefix="/usr/local"
	_bindir="/usr/local/bin"
	_libdir="/usr/$(get_libdir)"
	_ppddir="/usr/share/cups/model"

	einfo ""
	einfo " USE-flags\t(description / probably compatible printers)"
	einfo ""
	einfo " bjtools\t(additional monitoring and maintenance software)"
	einfo " $_pr1\t($_prcomp1)"
	einfo " $_pr2\t($_prcomp2)"
	einfo " $_pr3\t($_prcomp3)"
	einfo " $_pr4\t($_prcomp4)"
	einfo " $_pr5\t($_prcomp5)"
	einfo ""
	if ! (use $_pr1 || use $_pr2 || use $_pr3 || use $_pr4 || use $_pr5); then
		ewarn "You didn't specify any driver model (set it's USE-flag)."
		einfo ""
		einfo "As example:\tbasic MP780 support without maintenance tools"
		einfo "\t\t -> USE=\"pixmaip4100\""
		einfo ""
		einfo "Sleeping 10 seconds (Press CTRL+C to abort)"
		einfo ""
		sleep 10
		_autochoose="true"
	else
		_autochoose="false"
	fi
}

src_unpack() {
	rpm_src_unpack || die
	mv bjfilter-common-${PV} ${P} || die # Correcting directory-structure
	if use "pixusip4100" || ${_autochoose}; then
		epatch ${FILESDIR}/bjfilter-2.50-pixusip4100-ppd.patch || die
	fi
}

src_compile() {
	cd libs || die
	./autogen.sh --prefix=${_prefix} || die "Error: libs/autoconf.sh failed"
	make || die "Couldn't make libs"

	cd ../pstocanonbj || die
	./autogen.sh --prefix=/usr --enable-progpath=${_bindir} || die "Error: pstocanonbj/autoconf.sh failed"
	make || die "Couldn't make pstocanonbj"

	if use bjtools; then
		cd ../bjcups || die
		./autogen.sh --prefix=${_prefix} --enable-progpath=${_bindir} || die "Error: bjcups/autoconf.sh failed"
		make || die "Couldn't make bjcups"

		cd ../bjcupsmon || die # It's neccessary to cd into bjcupsmon for the next script to work
		./autogen.sh --prefix=${_prefix} || die "Error: bjcupsmon/autoconf.sh failed"
		make || die "Couldn't make bjcupsmon"
	fi

	cd ..

	_pr=$_pr1 _prid=$_prid1
	if use $_pr || ${_autochoose}; then
		src_compile_pr;
	fi

	_pr=$_pr2 _prid=$_prid2
	if use $_pr || ${_autochoose}; then
		src_compile_pr;
	fi

	_pr=$_pr3 _prid=$_prid3
	if use $_pr || ${_autochoose}; then
		src_compile_pr;
	fi

	_pr=$_pr4 _prid=$_prid4
	if use $_pr || ${_autochoose}; then
		src_compile_pr;
	fi

	_pr=$_pr5 _prid=$_prid5
	if use $_pr || ${_autochoose}; then
		src_compile_pr;
	fi
}

src_install() {
	mkdir -p ${D}${_bindir} || die
	mkdir -p ${D}${_libdir}/cups/filter || die
	mkdir -p ${D}${_ppddir} || die
	mkdir -p ${D}${_libdir}/bjlib || die

	cd libs || die
	make DESTDIR=${D} install || die "Couldn't make install libs"

	cd ../pstocanonbj || die
	make DESTDIR=${D} install || die "Couldn't make install pstocanonbj"

	if use bjtools; then
		cd ../bjcups || die
		make DESTDIR=${D} install || die "Couldn't make install bjcups"

		cd ../bjcupsmon || die
		make DESTDIR=${D} install || die "Couldn't make install bjcupsmon"
	fi

	cd ..

	_pr=$_pr1 _prid=$_prid1
	if use $_pr || ${_autochoose}; then
		src_install_pr;
	fi

	_pr=$_pr2 _prid=$_prid2
	if use $_pr || ${_autochoose}; then
		src_install_pr;
	fi

	_pr=$_pr3 _prid=$_prid3
	if use $_pr || ${_autochoose}; then
		src_install_pr;
	fi

	_pr=$_pr4 _prid=$_prid4
	if use $_pr || ${_autochoose}; then
		src_install_pr;
	fi

	_pr=$_pr5 _prid=$_prid5
	if use $_pr || ${_autochoose}; then
		src_install_pr;
	fi
}

pkg_postinst() {
	einfo ""
	einfo "For installing a printer:"
	einfo " * Restart CUPS: /etc/init.d/cupsd restart"
	einfo " * Go to http://127.0.0.1:631/"
	einfo "   -> Printers -> Add Printer"
	einfo ""
	einfo "If you experience any problems, please visit:"
	einfo " http://forums.gentoo.org/viewtopic-p-3217721.html"
	einfo ""
}


###
#	Custom Helper Functions
###

src_compile_pr()
{
	mkdir ${_pr}
	cp -a ${_prid} ${_pr} || die
	cp -a bjfilter ${_pr} || die
	cp -a printui ${_pr} || die
	cp -a stsmon ${_pr} || die

	cd ${_pr}/bjfilter || die
	./autogen.sh --prefix=${_prefix} --program-suffix=${_pr} --enable-libpath=${_libdir}/bjlib --enable-binpath=${_bindir} || die
	make || die "Couldn't make ${_pr}/bjfilter"

	if use bjtools; then
		cd ../printui || die
		./autogen.sh --prefix=${_prefix} --program-suffix=${_pr} || die
		make || die "Couldn't make ${_pr}/printui"

		cd ../stsmon || die
		./autogen.sh --prefix=${_prefix} --program-suffix=${_pr} --enable-progpath=${_bindir} || die
		make || die "Couldn't make ${_pr}/stsmon"
	fi
	
	cd ../..
}

src_install_pr()
{
	cd ${_pr}/bjfilter || die
	make DESTDIR=${D} install || die "Couldn't make install ${_pr}/bjfilter"

	if use bjtools; then
		cd ../printui || die
		make DESTDIR=${D} install || die "Couldn't make install ${_pr}/printui"

		cd ../stsmon || die
		make DESTDIR=${D} install || die "Couldn't make install ${_pr}/stsmon"
	fi

	cd ../..
	cp ${_prid}/libs_bin/* ${D}${_libdir} || die
	cp ${_prid}/database/* ${D}${_libdir}/bjlib || die
	cp ppd/canon${_pr}.ppd ${D}${_ppddir} || die
}
