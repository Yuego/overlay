# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $
EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1 git-r3

EGIT_REPO_URI="https://github.com/sehmaschine/django-grappelli.git"
DESCRIPTION="A jazzy skin for the Django admin interface"
HOMEPAGE="http://www.grappelliproject.com/ https://github.com/sehmaschine/django-grappelli"
LICENSE="BSD-4"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-2.1[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
