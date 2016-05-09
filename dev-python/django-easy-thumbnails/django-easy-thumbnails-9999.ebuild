# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1 git-r3

DESCRIPTION="Easy thumbnails for Django"
HOMEPAGE="https://github.com/SmileyChris/easy-thumbnails"

EGIT_REPO_URI="git://github.com/SmileyChris/easy-thumbnails.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.3"
DEPEND="dev-python/setuptools"

S=${WORKDIR}/easy-thumbnails

