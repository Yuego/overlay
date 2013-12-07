# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Seamless Polymorphic Inheritance for Django Models."
HOMEPAGE="https://github.com/bconstantin/django_polymorphic"

SRC_URI="https://github.com/bconstantin/django_polymorphic/archive/V1.0-RC-1.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3"
DEPEND="dev-python/setuptools"

S=${WORKDIR}/django_polymorphic-1.0-RC-1

