# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit rpm

FETCH_P=${PN}_${PV}
PROPER_P="EdrawMax"
PV_MAJOR=${PV%%.+([0-9])}
#http://download.edrawsoft.com/archives/edrawmax_10.0_x86_64.rpm
SRC_URI="http://download.edrawsoft.com/archives/${FETCH_P}_x86_64.rpm"
DESCRIPTION="EDRAWmax electric engineering software"
HOMEPAGE="https://www.edrawsoft.com/"

LICENSE="PRORIETARY"
SLOT="0"
KEYWORDS="~amd64"


DEPEND=""

S=${WORKDIR}

src_unpack () {
    rpm_src_unpack ${A}
}


src_install () {
    dodir /opt
    dodir /usr
    default	
}


