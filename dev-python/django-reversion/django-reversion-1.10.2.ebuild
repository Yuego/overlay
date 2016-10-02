# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="An extension to the Django web framework that provides comprehensive version control facilities."
HOMEPAGE="http://github.com/etianen/django-reversion"
SRC_URI="https://github.com/etianen/django-reversion/archive/release-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S="${WORKDIR}/${PN}-release-${PV}"

DEPEND="
	>=dev-python/django-1.7
"
RDEPEND="dev-python/setuptools"
