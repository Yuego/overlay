# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=4

EGIT_REPO_URI="https://github.com/klen/django_markdown.git"

inherit distutils eutils git-2

DESCRIPTION="Django markdown support and wysiwig"
HOMEPAGE="http://klen.github.com/git-markdown-ru.html"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

DOCS="docs/* README.rst"

