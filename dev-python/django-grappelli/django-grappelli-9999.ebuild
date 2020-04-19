# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $
EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

EGIT_REPO_URI="https://github.com/sehmaschine/django-grappelli.git"
DESCRIPTION="A jazzy skin for the Django admin interface"
HOMEPAGE="http://www.grappelliproject.com/ https://github.com/sehmaschine/django-grappelli"
LICENSE="BSD-4"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.11[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
