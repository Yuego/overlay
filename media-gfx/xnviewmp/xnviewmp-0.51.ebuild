# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: media-gfx/xnviewmp/xnviewmp-0.51.ebuild,v 1.1 2012/07/20 01:10:00 itspec.ru Exp $

EAPI=4

inherit eutils versionator

DESCRIPTION="XnView MP image viewer/converter"
HOMEPAGE="http://www.xnview.com/"
CH_PV="$(get_major_version  $(replace_version_separator '.' '' ${PV}))"
SRC_URI="x86? ( http://download.xnview.com/XnViewMP-${CH_PV}-linux.tgz )
       amd64? ( http://download.xnview.com/XnViewMP-${CH_PV}-linux-x64.tgz )"

SLOT="0"
LICENSE="free-noncomm as-is"
RESTRICT="mirror"

KEYWORDS="~x86 ~amd64"
IUSE=""

LANGS="ar bg ca cs da de es et fa fi fr gl he hu hy il it ja ko lt nb nl pl pt pt_BR ru sk sl sv tw uk zh"
for lang in ${LANGS}; do
    IUSE+=" linguas_${lang}"
done

RDEPEND=">=dev-libs/glib-2
        x11-libs/libX11
        x11-libs/libXi
        x11-libs/libXt
        media-libs/libpng:1.2
        virtual/jpeg
        || ( dev-qt/qtcore:4 ( dev-qt/qtgui:4 ) )"
DEPEND=""

RESTRICT="strip"
S="${WORKDIR}/XnView"

rdos2unix() {
    edos2unix $(find . -name '*'.$1 -type f) || die "Failed to convert line-endings of all .$1 files"
}

src_prepare() {

    for lang in ${LANGS};do
        for x in ${lang};do
            if ! use linguas_${x}; then
                rm -f ${S}/"language/exif_${x}.lng"
                rm -f ${S}/"language/qt_${x}.qm"
                rm -f ${S}/"language/xnview_${x}.qm"
            fi
        done
    done

    rdos2unix lng
    rdos2unix qss
}

src_install() {
    declare XNVIEW_HOME=/opt/XnView

    # Install XnView in /opt
    dodir ${XNVIEW_HOME%/*}
    mv "${S}" "${D}"${XNVIEW_HOME} || die "Unable to install XnView folder"

    # Create /opt/bin/xnview
    dodir /opt/bin/
    cat <<EOF >"${D}"/opt/bin/xnview
#!/bin/sh
LD_LIBRARY_PATH=/opt/XnView/lib
export LD_LIBRARY_PATH
QT_PLUGIN_PATH=/opt/XnView/lib
export QT_PLUGIN_PATH
exec /opt/XnView/XnView "\$@"
EOF
    fperms 0755 /opt/bin/xnview

    # Install icon and .desktop for menu entry
    newicon "${D}"${XNVIEW_HOME}/xnview.png ${PN}.png
    make_desktop_entry xnview XnviewMP ${PN} "Graphics" || die "desktop file sed failed"
}
