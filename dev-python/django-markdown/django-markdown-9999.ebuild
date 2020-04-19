# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy )

EGIT_REPO_URI="https://github.com/klen/django_markdown.git"

inherit distutils-r1 git-r3

DESCRIPTION="Django markdown support and wysiwig"
HOMEPAGE="http://klen.github.com/git-markdown-ru.html"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

DOCS="docs/* README.rst"
