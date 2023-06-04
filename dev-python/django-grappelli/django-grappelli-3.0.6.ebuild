# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $
EAPI=8
PYTHON_COMPAT=( python3_{9..11} pypy3 )

inherit distutils-r1

SRC_URI="https://github.com/sehmaschine/django-grappelli/archive/${PV}.tar.gz -> ${P}.tar.gz"

DESCRIPTION="A jazzy skin for the Django admin interface"
HOMEPAGE="http://www.grappelliproject.com/"
LICENSE="BSD-4"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/django-3.2[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"
