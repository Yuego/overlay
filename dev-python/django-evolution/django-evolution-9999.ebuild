# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

ESVN_REPO_URI="http://django-evolution.googlecode.com/svn/trunk/"

inherit distutils-r1 subversion

DESCRIPTION="Schema Evolution for the Django Project"
HOMEPAGE="http://code.google.com/p/django-evolution/"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools"

src_install () {
    distutils_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc docs/*
}
