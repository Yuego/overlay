# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

HOMEPAGE="https://github.com/carljm/django-model-utils"
DESCRIPTION="Django model mixins and utilities. Includes QueryManager for
one-line definition of Managers returning a custom QuerySet,
InheritanceCastModel for more efficient use of model inheritance, and
TimeStampedModel."
EGIT_REPO_URI="git://github.com/carljm/django-model-utils.git"
LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.11[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_install () {
	distutils-r1_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc *.txt
}
