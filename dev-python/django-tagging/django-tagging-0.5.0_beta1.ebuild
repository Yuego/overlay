# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Tagging app for django"
HOMEPAGE="https://github.com/Yuego/django-tagging"

SRC_URI="https://github.com/Yuego/django-tagging/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
KEYWORDS="amd64 x86"
SLOT="0"
IUSE=""

RDEPEND="
	dev-python/django[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}"
