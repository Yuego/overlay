# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $
EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

SRC_URI="https://github.com/sehmaschine/django-grappelli/archive/${PV}.tar.gz -> ${P}.tar.gz"

DESCRIPTION="A jazzy skin for the Django admin interface"
HOMEPAGE="http://www.grappelliproject.com/"
LICENSE="BSD-4"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.7
	<dev-python/django-1.10
"
DEPEND="${RDEPEND}"
