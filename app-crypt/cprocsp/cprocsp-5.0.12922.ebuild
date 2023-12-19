# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
inherit rpm

DESCRIPTION="Cryptopro package"
HOMEPAGE="http://www.cryptopro.ru"
SRC_URI="amd64? ( linux-amd64.tgz )"

LICENSE="Cryptopro"
SLOT="0"
KEYWORDS="amd64"
IUSE="+kc1 +gui_gtk +readers +cptools stunnel +pkcs11 +import_ca +plugin +certprop +ifd-rutokens"

REQUIRED_USE="gui_gtk? ( kc1 )
	readers? ( kc1 )
	cptools? ( kc1 )
	pkcs11? ( kc1 )
	import_ca? ( kc1 )
	plugin? ( gui_gtk )
"

DEPEND=" sys-apps/pcsc-tools
	sys-apps/pcsc-lite
	sys-apps/lsb-release
	app-crypt/ccid
	app-arch/rpm2targz"

RDEPEND="${DEPEND}"

RESTRICT="mirror strip"

src_unpack () {
	unpack ${A}
	cd ${WORKDIR}
	mv linux-amd64/* ${DISTDIR}
	rm -rf *
	mkdir ${S}
	cd ${S}

	SUFF="${PV}-7"

if use kc1; then
rpm_unpack lsb-cprocsp-kc1-64-${SUFF}.x86_64.rpm
rpm_unpack lsb-cprocsp-base-${SUFF}.noarch.rpm
rpm_unpack lsb-cprocsp-capilite-64-${SUFF}.x86_64.rpm
rpm_unpack lsb-cprocsp-rdr-64-${SUFF}.x86_64.rpm
rpm_unpack cprocsp-curl-64-${SUFF}.x86_64.rpm
fi

if use gui_gtk; then
rpm_unpack cprocsp-rdr-gui-gtk-64-${SUFF}.x86_64.rpm
fi

if use readers; then
rpm_unpack cprocsp-rdr-pcsc-64-${SUFF}.x86_64.rpm
rpm_unpack cprocsp-rdr-emv-64-${SUFF}.x86_64.rpm
rpm_unpack cprocsp-rdr-inpaspot-64-${SUFF}.x86_64.rpm
rpm_unpack cprocsp-rdr-kst-64-${SUFF}.x86_64.rpm
rpm_unpack cprocsp-rdr-mskey-64-${SUFF}.x86_64.rpm
rpm_unpack cprocsp-rdr-novacard-64-${SUFF}.x86_64.rpm
rpm_unpack cprocsp-rdr-edoc-64-${SUFF}.x86_64.rpm
rpm_unpack cprocsp-rdr-rutoken-64-${SUFF}.x86_64.rpm
rpm_unpack cprocsp-rdr-cloud-64-${SUFF}.x86_64.rpm
rpm_unpack cprocsp-rdr-cpfkc-64-${SUFF}.x86_64.rpm
rpm_unpack cprocsp-rdr-infocrypt-64-${SUFF}.x86_64.rpm
rpm_unpack cprocsp-rdr-rosan-64-${SUFF}.x86_64.rpm
rpm_unpack cprocsp-rdr-cryptoki-64-${SUFF}.x86_64.rpm
rpm_unpack cprocsp-rdr-esmart-64-${SUFF}.x86_64.rpm
rpm_unpack cprocsp-rdr-jacarta-64-${SUFF}.x86_64.rpm
rpm_unpack cprocsp-rdr-relay-64-${SUFF}.x86_64.rpm
fi

if use cptools; then
rpm_unpack cprocsp-cptools-gtk-64-${SUFF}.x86_64.rpm
fi

if use pkcs11; then
rpm_unpack lsb-cprocsp-pkcs11-64-${SUFF}.x86_64.rpm
fi

if use import_ca; then
rpm_unpack lsb-cprocsp-ca-certs-${SUFF}.noarch.rpm
rpm_unpack lsb-cprocsp-import-ca-certs-${SUFF}.noarch.rpm
fi

if use plugin; then
rpm_unpack cprocsp-pki-cades-64-2.0.14927-1.amd64.rpm
rpm_unpack cprocsp-pki-plugin-64-2.0.14927-1.amd64.rpm
fi

if use certprop; then
rpm_unpack cprocsp-certprop-64-${SUFF}.x86_64.rpm
fi

if use ifd-rutokens; then
rpm_unpack ifd-rutokens_1.0.4_1.x86_64.rpm
fi

rm ${S}/lib64/ld-lsb-x86-64.so.3
}

src_install() {
	cp -vR ${S}/* ${D}/
	rm -f ${D}/etc/init.d/cprocsp
	cp -f ${FILESDIR}/cprocsp ${D}/etc/init.d/cprocsp
}

pkg_postinst() {
	chmod -R 777 /var/opt/cprocsp
	touch /etc/debian_version
	echo "jessie/sid" > /etc/debian_version
	cp -f ${FILESDIR}/config64.ini /etc/opt/cprocsp/config64.ini
	cp -f ${FILESDIR}/license.ini /etc/opt/cprocsp/license.ini
	mkdir /var/opt/cprocsp && mkdir /var/opt/cprocsp/tmp
	if test -z "";then
	if ! grep -q '/opt/cprocsp/lib/amd64' /etc/ld.so.conf;then
	echo "/opt/cprocsp/lib/amd64" > /etc/ld.so.conf.d/cprocsp-lib-amd64.conf
        fi
        /sbin/ldconfig -f /etc/ld.so.conf
    fi
	rc-update add cprocsp default
	/etc/init.d/cprocsp start
}

pkg_prerm ()  {
	/etc/init.d/cprocsp stop
	rc-update del cprocsp default
	rm -Rv /etc/init.d/cprocsp
	rm -Rv /etc/debian_version
	rm -Rv /var/opt/cprocsp
	rm -Rv /etc/opt/cprocsp
}

