# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

inherit eutils git-r3

DESCRIPTION="Krpano Tools"
HOMEPAGE="https://github.com/Yuego/krpanotools"
EGIT_REPO_URI="https://github.com/Yuego/krpanotools.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="kde"

DEPEND=""
RDEPEND="${DEPEND}
	media-gfx/krpanotools-binaries[viewer]
	media-gfx/imagemagick[jpeg,png,tiff]
	kde? ( kde-apps/konsole )
"

S="${WORKDIR}"

src_install() {
	#MENU
	insopts -m0644
	# KDE 4
»···insinto "/usr/share/applications/${PN}/"
»···doins "${S}"/menu/*
»···# KDE 5
»···insinto "/usr/share/kservices5/${PN}/"
»···doins "${S}"/menu/*

	#TEMPLATES
	insinto "/opt/${PN}/"
	doins -r ${S}/templates/

	#CONFIGS
	doins -r ${S}/config/

	#IMAGES
	doins -r ${S}/images/
}
