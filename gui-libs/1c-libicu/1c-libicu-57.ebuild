# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="libicu"
HOMEPAGE=""
SRC_URI="http://ftp.ru.debian.org/debian/pool/main/i/icu/libicu57_57.1-6+deb9u4_amd64.deb"

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
