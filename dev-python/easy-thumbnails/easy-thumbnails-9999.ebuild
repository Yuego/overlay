# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{4,5,6} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Easy thumbnails for Django"
HOMEPAGE="https://github.com/SmileyChris/easy-thumbnails"

EGIT_REPO_URI="git://github.com/SmileyChris/easy-thumbnails.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.8[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S=${WORKDIR}/easy-thumbnails
