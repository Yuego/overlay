# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit eutils distutils-r1 git-r3

DESCRIPTION="Translates Django models using a registration approach."
HOMEPAGE="https://github.com/deschler/django-modeltranslation"

EGIT_REPO_URI="git://github.com/deschler/django-modeltranslation.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.7[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
