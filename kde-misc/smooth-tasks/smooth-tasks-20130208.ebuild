# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

KDE_LINGUAS="cs de fr hu pl ru tr uk_UA zh_CN"

inherit kde4-base

CHANGESET="e794677f5b85"

DESCRIPTION="KDE plasmoid. Windows 7 like taskbar, fork of stasks"
HOMEPAGE="http://www.kde-look.org/content/show.php/Smooth+Tasks?content=101586"
SRC_URI="https://bitbucket.org/flupp/smooth-tasks-fork/get/${CHANGESET}.tar.bz2 -> ${PN}-${CHANGESET}.tar.bz2"

LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"
SLOT="4"
IUSE="debug"

DEPEND="
	>=kde-base/libtaskmanager-${KDE_MINIMAL}
"
RDEPEND="${DEPEND}
	>=kde-base/plasma-workspace-${KDE_MINIMAL}
"

S="${WORKDIR}/flupp-smooth-tasks-fork-${CHANGESET}"

