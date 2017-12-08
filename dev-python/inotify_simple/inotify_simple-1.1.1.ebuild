# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6} )
GITHUB_USER="chrisjbillington"
GITHUB_REPO="${PN}"


if [ ${PV} == "9999" ] ; then
	inherit git-r3
	AUTOTOOLS_AUTORECONF="1"
	EGIT_REPO_URI="https://github.com/${GITHUB_USER}/${GITHUB_REPO}.git"
        EGIT_BRANCH="master"
else
        SRC_URI="https://github.com/${GITHUB_USER}/${GITHUB_REPO}/archive/v${PV}.tar.gz -> ${P}.tar.gz"      
fi

inherit distutils-r1 eutils linux-info

DESCRIPTION="A Python library for creating super fancy Unix daemons"
HOMEPAGE="https://github.com/jnrbsn/daemonocle"


RDEPEND="${PYTHON_DEPS}"

DEPEND="${RDEPEND}
        >=dev-python/setuptools-30[${PYTHON_USEDEP}]"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"



pkg_setup() {
	linux-info_pkg_setup
}

python_prepare_all() {

	distutils-r1_python_prepare_all
}

python_install_all() {

	distutils-r1_python_install_all
}


