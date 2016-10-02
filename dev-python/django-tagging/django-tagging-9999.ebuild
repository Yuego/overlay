# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Tagging app for Django"
HOMEPAGE="https://github.com/Yuego/django-tagging"
EGIT_REPO_URI="git://github.com/Yuego/django-tagging.git"

LICENSE="MIT"
KEYWORDS=""
SLOT="0"
IUSE=""

RDEPEND="dev-python/django
"

DEPEND="${RDEPEND}"

