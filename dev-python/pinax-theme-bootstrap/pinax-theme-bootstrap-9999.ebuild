# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="A theme for Pinax based on Twitter's Bootstrap"
HOMEPAGE="https://github.com/pinax/pinax-theme-bootstrap"

EGIT_REPO_URI="git://github.com/pinax/pinax-theme-bootstrap.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/django
	>=dev-python/django-forms-bootstrap-2.0.3
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="pinax_theme_bootstrap"
S="$WORKDIR/pinax-theme-bootstrap-${PV}"

src_test() {
	python setup.py test || die "tests failed"
}

