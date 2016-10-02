# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="Krpano Tools License"
HOMEPAGE="http://krpano.com"
SRC_URI="http://krpano.com/${P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RESTRICT="fetch"

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_install() {
	insinto "/opt/krpanotools/bin/"
	doins "${S}"/*
}
