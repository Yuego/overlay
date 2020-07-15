# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8} pypy )

inherit distutils-r1

DESCRIPTION="Up to date simple useragent faker with real world database"
HOMEPAGE="https://github.com/hellysmile/fake-useragent"

SRC_URI="https://github.com/hellysmile/fake-useragent/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	dev-python/pyopenssl[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
