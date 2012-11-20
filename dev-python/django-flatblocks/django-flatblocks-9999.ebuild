# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=4

EGIT_REPO_URI="https://github.com/zerok/django-flatblocks.git"

inherit distutils eutils git-2

DESCRIPTION="django-flatblocks is a simple application for handling small text-blocks on websites"
HOMEPAGE="https://github.com/zerok/django-flatblocks"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

DOCS="README.rst LICENSE.txt AUTHORS.txt"

