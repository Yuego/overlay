# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $
EAPI=6
PYTHON_COMPAT=( python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

EGIT_REPO_URI="https://github.com/sehmaschine/django-grappelli.git"
EGIT_COMMIT="59646db60e3d49b65ccc244dd247a4cc6ef777d0"

DESCRIPTION="A jazzy skin for the Django admin interface"
HOMEPAGE="http://www.grappelliproject.com/"
LICENSE="BSD-4"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
	<dev-python/django-2.2[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"
