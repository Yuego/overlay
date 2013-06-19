# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy{1_9,2_0} )

inherit distutils-r1

VER="${PV}.post1"
DESCRIPTION="Simple Twitter Bootstrap filter and templates for use with Django forms extracted from the Pinax Bootstrap theme."
HOMEPAGE="https://github.com/pinax/django-forms-bootstrap"

SRC_URI="https://github.com/pinax/django-forms-bootstrap/archive/v${VER}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	dev-python/django
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="django_forms_bootstrap"
S="$WORKDIR/django-forms-bootstrap-${VER}"

src_test() {
	python setup.py test || die "tests failed"
}

