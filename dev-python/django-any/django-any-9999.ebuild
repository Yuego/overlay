# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Unobtrusive test models creation for django"
HOMEPAGE="https://github.com/kmmbvnr/django-any/"

EGIT_REPO_URI="git://github.com/kmmbvnr/django-any.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.3
"
DEPEND="dev-python/setuptools"
