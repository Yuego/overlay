# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="A customizable plug-in photo management application for the Django web framework."
HOMEPAGE="https://github.com/jdriscoll/django-photologue"

EGIT_REPO_URI="git://github.com/jdriscoll/django-photologue.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.8[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]
	>=dev-python/django-sortedm2m-1.1.1[${PYTHON_USEDEP}]
	>=dev-python/exifread-2.1.2[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/pip[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
"
