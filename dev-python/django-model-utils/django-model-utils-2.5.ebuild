# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

HOMEPAGE="https://github.com/carljm/django-model-utils"
DESCRIPTION="Django model mixins and utilities. Includes QueryManager for
one-line definition of Managers returning a custom QuerySet,
InheritanceCastModel for more efficient use of model inheritance, and
TimeStampedModel."

SRC_URI="https://github.com/carljm/django-model-utils/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.4.2"
DEPEND="dev-python/setuptools"


src_install () {
	distutils-r1_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc *.txt
}
