# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Yandex maps API"
HOMEPAGE="https://github.com/kmike/yandex-maps"

EGIT_REPO_URI="git://github.com/kmike/yandex-maps.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools"