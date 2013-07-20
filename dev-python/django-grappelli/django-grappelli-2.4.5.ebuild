# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $
EAPI="5"
PYTHON_COMPAT=( python{2_7,3_3} pypy{1_9,2_0} )

inherit distutils-r1

WEBAPP_MANUAL_SLOT="yes"

DESCRIPTION="A jazzy skin for the Django admin interface"
HOMEPAGE="http://www.grappelliproject.com/"
SRC_URI="https://github.com/sehmaschine/django-grappelli/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-4"
SLOT="0"

KEYWORDS="x86 amd64"
IUSE=""

RDEPEND=">=dev-python/django-1.4"
DEPEND="${RDEPEND}"

