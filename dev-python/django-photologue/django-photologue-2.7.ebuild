# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy{1_9,2_0} )

inherit distutils-r1

DESCRIPTION="A customizable plug-in photo management application for the Django web framework."
HOMEPAGE="https://github.com/jdriscoll/django-photologue"

SRC_URI="https://github.com/jdriscoll/django-photologue/archive/${PV}.praekelt.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="amd64 ~ia64 ~ppc ~ppc64 x86"
IUSE="test"

RDEPEND=">=dev-python/django-1.3"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="photologue"
S="${WORKDIR}/${P}.praekelt"

src_test() {
	python setup.py test || die "tests failed"
}

