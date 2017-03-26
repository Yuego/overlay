# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="A django app that provides Markdown-related template tags using the python-markdown2 library."
HOMEPAGE="https://github.com/trentm/django-markdown-deux"

EGIT_REPO_URI="git://github.com/trentm/django-markdown-deux.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/django[${PYTHON_USEDEP}]
	dev-python/markdown2[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"