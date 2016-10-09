# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

inherit eutils

DESCRIPTION="Krpano Tools"
HOMEPAGE="https://github.com/Yuego/krpanotools"
SRC_URI="https://github.com/Yuego/krpanotools/archive/${PV}.tar.gz -> krpanotools-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="kde"

DEPEND=""
RDEPEND="${DEPEND}
	media-gfx/krpanotools-binaries[viewer]
	media-gfx/enblend
	media-libs/exiftool
	media-gfx/imagemagick[openmp,raw,tiff]
	kde? ( kde-apps/konsole )
"

src_install() {
	#MENU
	insopts -m0644
	# KDE 4
	insinto "/usr/share/applications/${PN}/"
	doins "${S}"/menu/*
	# KDE 5
	insinto "/usr/share/kservices5/${PN}/"
	doins "${S}"/menu/*

	#TEMPLATES
	insinto "/opt/${PN}/"
	doins -r "${S}/templates/"

	#CONFIGS
	doins -r "${S}/config/"

	#IMAGES
	doins -r "${S}/images/"

	insopts -m0655
	SCRIPTS
	doins -r "${S}/scripts/"
}
