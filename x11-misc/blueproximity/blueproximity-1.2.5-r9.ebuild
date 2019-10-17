# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
PYTHON_COMPAT=( python2_7 )
inherit python-single-r1 desktop

SRC_URI="mirror://sourceforge/blueproximity/${P}.tar.gz"
DESCRIPTION="Bluetooth connection strength monitor"
HOMEPAGE="http://sourceforge.net/projects/blueproximity/"
PATCHES=(
	"${FILESDIR}/${P}.orig.patch"
)

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT=""
REQUIRED_USE="${PYTHON_REQUIRED_USE}"
IUSE=""

DEPEND="${PYTHON_DEPS}
	dev-python/configobj
	dev-python/pygtk
	dev-python/pybluez"
RDEPEND="${DEPEND}"

src_unpack() {
	default
	mv ${WORKDIR}/${P}.orig ${WORKDIR}/${P} 
}

src_install() {
	cd ${WORKDIR}/${P}
	dodoc README ChangeLog COPYING doc/blueproximity.1
	dodoc -r doc
	insinto "/usr/share/${PN}"
	doins blueproximity_attention.svg  blueproximity_error.svg  blueproximity_pause.svg blueproximity_base.svg blueproximity_nocon.svg
	doins proximity.glade proximity.py
	doins -r LANG
	dobin start_proximity.sh addons/blueproximity
	domenu addons/blueproximity.desktop
	doicon addons/blueproximity.xpm 
	 
	
	
}







