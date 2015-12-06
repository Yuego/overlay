# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 git-r3

DESCRIPTION="Seamless Polymorphic Inheritance for Django Models. For
documentation and news click link below"
HOMEPAGE="https://github.com/bconstantin/django_polymorphic"

EGIT_REPO_URI="https://github.com/bconstantin/django_polymorphic.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.3"
DEPEND="dev-python/setuptools"

S=${WORKDIR}/polymorphic

