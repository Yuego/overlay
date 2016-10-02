# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="This package provides cross-platform cross-python shutil.which functionality."
HOMEPAGE="https://github.com/pydanny/whichcraft"

SRC_URI="https://github.com/pydanny/whichcraft/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
"
DEPEND="dev-python/setuptools"

