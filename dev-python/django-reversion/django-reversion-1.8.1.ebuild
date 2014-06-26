# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1

DESCRIPTION="An extension to the Django web framework that provides comprehensive version control facilities."
HOMEPAGE="http://github.com/etianen/django-reversion"
SRC_URI="https://github.com/etianen/django-reversion/archive/release-${PV}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~x86-fbsd"
IUSE=""

S="${WORKDIR}/${PN}-release-${PV}"

DEPEND="dev-python/django
dev-python/setuptools"
RDEPEND=""
