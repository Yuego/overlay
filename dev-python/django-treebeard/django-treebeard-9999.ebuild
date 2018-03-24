# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Efficient tree implementations for Django"
HOMEPAGE="https://github.com/tabo/django-treebeard"

EGIT_REPO_URI="git://github.com/tabo/django-treebeard.git"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.6
"
DEPEND="dev-python/setuptools"