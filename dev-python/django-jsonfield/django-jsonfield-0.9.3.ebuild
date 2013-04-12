# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit eutils distutils

DESCRIPTION="Django Template Blocks with extra functionality"
HOMEPAGE="https://github.com/ojii/django-sekizai"


COMMIT="7e5feb505636"
SRC_URI="https://bitbucket.org/schinckel/django-jsonfield/get/${PV}.tar.bz2 -> django-jsonfield-${PV}.tar.bz2"


LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="jsonfield"

S="${WORKDIR}/schinckel-${PN}-7e5feb505636"

src_test() {
	python setup.py test || die "tests failed"
}

