# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6} )

if [ ${PV} == "9999" ] ; then
	inherit git-r3
	AUTOTOOLS_AUTORECONF="1"
	EGIT_REPO_URI="https://github.com/jab/bidict.git"
        EGIT_BRANCH="master"
else
        SRC_URI="https://github.com/jab/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"      
fi

inherit distutils-r1 eutils linux-info

DESCRIPTION="Efficient, Pythonic bidirectional map implementation and related functionality"
HOMEPAGE="https://github.com/jab/bidict"


RDEPEND="${PYTHON_DEPS}"

DEPEND="${RDEPEND}
        >=dev-python/setuptools-30[${PYTHON_USEDEP}]"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"


LICENSE="Mozilla PL"
SLOT="0"
KEYWORDS="~x86 ~amd64"



pkg_setup() {
	linux-info_pkg_setup
}

python_prepare_all() {
	# Remove duplicate entries of a prebuilt doc build and
	# ensure install of the file glances.conf in /etc/${PN}

	distutils-r1_python_prepare_all
}

python_install_all() {

	distutils-r1_python_install_all
}


