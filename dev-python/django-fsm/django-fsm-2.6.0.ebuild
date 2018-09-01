# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Django friendly finite state machine support"
HOMEPAGE="https://github.com/kmmbvnr/django-fsm"

SRC_URI="https://github.com/kmmbvnr/django-fsm/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"