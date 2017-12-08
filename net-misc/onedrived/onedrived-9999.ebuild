# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{4,5,6} )

if [ ${PV} == "9999" ] ; then
	inherit git-r3
	AUTOTOOLS_AUTORECONF="1"
	EGIT_REPO_URI="https://github.com/xybu/onedrived-dev.git"
        EGIT_BRANCH="master"
else
        SRC_URI="mirror://sourceforge/ctags/${P}.tar.gz"      
fi

inherit distutils-r1 eutils linux-info

DESCRIPTION="Webdav based onedrive client for linux"
HOMEPAGE="https://github.com/xybu/onedrived-dev"


RDEPEND="${PYTHON_DEPS}
        >=dev-python/colorama-0.3.7
        >=dev-python/click-6.6
        dev-python/onedrivesdk
        >=dev-python/keyring-10.1
        dev-python/send2trash
        dev-python/zgitignore
        >=dev-python/requests-2.9.1
        >=dev-python/tabulate-0.7.7
        >=dev-python/daemonocle-1.0.1
        dev-python/arrow
        dev-python/psutil
        dev-python/bidict
        dev-python/inotify_simple"

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
	# Remove duplicate entries of a prebuilt doc build and
	# ensure install of the file glances.conf in /etc/${PN}

	distutils-r1_python_prepare_all
}

python_install_all() {

	distutils-r1_python_install_all
}


