# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils git-2

DESCRIPTION="Krpano Tools"
HOMEPAGE="https://github.com/Yuego/krpanotools"
EGIT_REPO_URI="https://github.com/Yuego/krpanotools.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	media-gfx/krpanotools-binaries[viewer]
	media-gfx/imagemagick[jpeg,png,tiff]
	kde-base/konsole
"

S="${WORKDIR}"

src_install() {
	#MENU
	insopts -m0644
	insinto "/usr/share/applications/krpano/"
	doins "${S}"/menu/*

	#TEMPLATES
	insinto "/opt/${PN}/"
	doins -r ${S}/templates/

	#CONFIGS
	doins -r ${S}/config/

	#IMAGES
	doins -r ${S}/images/
}
