# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit eutils distutils git-2

DESCRIPTION="Seamless Polymorphic Inheritance for Django Models. For
documentation and news click link below"
HOMEPAGE="https://github.com/bconstantin/django_polymorphic"

EGIT_REPO_URI="https://github.com/bconstantin/django_polymorphic.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.3"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="polymorphic"

S=${WORKDIR}/polymorphic

src_test() {
	python setup.py test || die "tests failed"
}

