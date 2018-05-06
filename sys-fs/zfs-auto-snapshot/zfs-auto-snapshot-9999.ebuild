# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

if [ ${PV} == "9999" ] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/zfsonlinux/zfs-auto-snapshot.git"
        EGIT_BRANCH="master"
fi


DESCRIPTION="zfs auto snapshotting script"
HOMEPAGE="http://zfsonlinux.org/"

LICENSE="BSD-2 CDDL MIT"
SLOT="0"
IUSE=""
PREFIX="/usr"


RDEPEND="sys-fs/zfs"

src_install() {
        emake DESTDIR=${D} PREFIX=${PREFIX} install 
}

