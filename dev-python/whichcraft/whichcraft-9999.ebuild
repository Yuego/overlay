# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="This package provides cross-platform cross-python shutil.which functionality."
HOMEPAGE="https://github.com/pydanny/whichcraft"

EGIT_REPO_URI="git://github.com/pydanny/whichcraft.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
"
DEPEND="dev-python/setuptools[$PYTHON_USEDEP}]"
