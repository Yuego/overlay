# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="libwebp6"
HOMEPAGE=""
SRC_URI="http://ftp.ru.debian.org/debian/pool/main/libw/libwebp/libwebp6_0.5.2-1_amd64.deb"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
SLOT="8.3"
RESTRICT="strip"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_unpack() {
	default

	unpack "${WORKDIR}"/data.tar.xz
}

src_install() {
	insinto /opt/1C/v8.3/x86_64
	#insinto /usr/lib64
	doins usr/lib/x86_64-linux-gnu/*
}
