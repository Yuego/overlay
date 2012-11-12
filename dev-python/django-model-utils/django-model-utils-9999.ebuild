# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils mercurial

EHG_REPO_URI="https://bitbucket.org/carljm/django-model-utils"
DESCRIPTION="Django model mixins and utilities. Includes QueryManager for
one-line definition of Managers returning a custom QuerySet,
InheritanceCastModel for more efficient use of model inheritance, and
TimeStampedModel."
HOMEPAGE="https://bitbucket.org/carljm/django-model-utils/src"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="model_utils"

src_test() {
	python setup.py test || die "tests failed"
}

src_install () {
	distutils_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc *.txt
}
