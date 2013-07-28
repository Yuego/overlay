# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_3} pypy{1_9,2_0} )

inherit distutils

DESCRIPTION="The best way to have DRY Django forms."
HOMEPAGE="https://github.com/maraujop/django-crispy-forms"

SRC_URI="https://github.com/maraujop/django-crispy-forms/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="crispy_forms"

src_test() {
	python setup.py test || die "tests failed"
}

