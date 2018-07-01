# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit git-r3

DESCRIPTION="A complete tool to interact with OneDrive on Linux. Built following the UNIX philosophy."
HOMEPAGE="https://skilion.github.io/onedrive/"
if [[ ${PV} -eq "9999" ]] ; then
        EGIT_REPO_URI="https://github.com/skilion/onedrive.git" ;
else
        SRC_URI="https://github.com/skilion/$PN/archive/v$PV.tar.gz -> ${P}.tar.gz" ;
fi

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-lang/dmd"
RDEPEND="net-misc/curl[ssl] >=dev-db/sqlite-3.0.0"


