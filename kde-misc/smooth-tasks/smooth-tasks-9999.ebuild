# 
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

KDE_LINGUAS="cs de fr hu pl ru tr uk_UA zh_CN"
KDE_MINIMAL="4.8"
inherit kde4-base
inherit mercurial

DESCRIPTION="Alternate taskbar KDE plasmoid, similar to Windows 7"
HOMEPAGE="http://bitbucket.org/flupp/smooth-tasks-fork"
EHG_REPO_URI="http://bitbucket.org/flupp/smooth-tasks-fork"
EHG_REVISION="kde-4.8"

LICENSE="GPL-2"
SLOT="4"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND="
		$(add_kdebase_dep libtaskmanager)
"
RDEPEND="${DEPEND}
		$(add_kdebase_dep plasma-workspace)
"

src_prepare() {
		mv ${WORKDIR}/${PN} ${WORKDIR}/${P}
		kde4-base_src_prepare
}
