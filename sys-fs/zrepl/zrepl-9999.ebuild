# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DESCRIPTION="zrepl is a one-stop ZFS backup & replication solution"
HOMEPAGE="https://zrepl.github.io/"
SLOT="0"
LICENSE="MIT"
if [[ $PV == "9999" ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/zrepl/zrepl.git"
	#EGIT_CHECKOUT_DIR=""	
else
	SOURCE_URI="https://github.com/zrepl/zrepl/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

DEPEND=">=dev-python/alabaster-0.7.11
	>=dev-python/Babel-2.6.0
	>=dev-python/certifi-2018.10.15
	>=dev-python/chardet-3.0.4
	>=dev-python/docutils-0.14
	>=dev-python/idna-2.7
	>=dev-python/imagesize-1.0.0
	>=dev-python/jinja-2.10
	>=dev-python/markupsafe-1.0
	>=dev-python/packaging-18.0
	>=dev-python/pygments-2.2.0
	>=dev-python/pyparsing-2.3.0
	>=dev-python/pytz-2018.7
	>=dev-python/requests-2.20.1
	>=dev-python/six-1.11.0
	>=dev-python/snowballstemmer-1.2.1
	>=dev-python/sphinx-1.8.2
	>=dev-python/sphinxcontrib-websupport-1.1.0
	>=dev-python/urllib3-1.24.1"
