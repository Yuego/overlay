# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{6..10} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Tweak the form field rendering in templates"
HOMEPAGE="https://github.com/jazzband/django-widget-tweaks"

EGIT_REPO_URI="https://github.com/jazzband/django-widget-tweaks.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-2.2[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
"
