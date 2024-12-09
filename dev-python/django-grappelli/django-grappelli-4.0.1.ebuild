# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $
EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

SRC_URI="https://github.com/sehmaschine/django-grappelli/archive/${PV}.tar.gz -> ${P}.tar.gz"

DESCRIPTION="A jazzy skin for the Django admin interface"
HOMEPAGE="http://www.grappelliproject.com/"
LICENSE="BSD-4"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/django-4.2[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"
