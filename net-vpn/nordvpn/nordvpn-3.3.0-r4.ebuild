# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit rpm systemd

FETCH_P=${P#-bin}-${PR#r}
SRC_URI="https://repo.nordvpn.com/yum/nordvpn/centos/x86_64/Packages/n/${FETCH_P}.x86_64.rpm"
DESCRIPTION="NordVPN Linux Client"
HOMEPAGE="https://nordvpn.com/ru/download/linux/"

LICENSE="GPL-2 public-domain"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="mirror"
IUSE="wireguard"

DEPEND="dev-libs/libxslt 
	net-firewall/iptables
	net-vpn/openvpn  
	wireguard? ( net-vpn/wireguard )"



S=${WORKDIR}
QA_PREBUILT="/var/lib/nordvpn/openvpn 
	/usr/sbin/nordvpn 
	/usr/bin/nordvpn"

src_unpack () {
    rpm_src_unpack ${A}
}


src_install () {

	doinitd etc/init.d/${PN}
	dobin usr/bin/${PN}
	dosbin usr/bin/${PN}
	systemd_dounit  usr/lib/systemd/system/nordvpnd.service
	systemd_dounit  usr/lib/systemd/system/nordvpnd.socket
	doman usr/share/man/man1/nordvpn.1.gz
	insinto usr/share
	doins -r usr/share/bash-completion
	doins -r usr/share/zsh
	insinto var/lib
	doins -r var/lib/${PN}
	
}


