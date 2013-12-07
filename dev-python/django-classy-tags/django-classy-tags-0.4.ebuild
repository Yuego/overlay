# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Class based template tags for django"
HOMEPAGE="https://github.com/ojii/django-classy-tags.git"

SRC_URI="https://github.com/ojii/django-classy-tags/archive/${PV}.tar.gz -> django-classy-tags-${PV}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.2"
DEPEND="dev-python/setuptools"


