# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils

DESCRIPTION="Krpano Tools"
HOMEPAGE="http://krpano.com"
SRC_URI="http://krpano.com/download/download.php?file=krpano${PV//./} -> krpanotools-viewer-${PV}.zip"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_install() {
	insinto "/opt/krpanotools/"
	doins -r "${S}"/plugins/

	insinto "/opt/krpanotools/viewer/"
	doins "${S}"/*.js
	doins "${S}"/*.swf
}
