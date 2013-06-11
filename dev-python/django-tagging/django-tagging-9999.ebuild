# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4

inherit distutils git-2

DESCRIPTION="Gregor Müllegger's fork of django-tagging to add namespaces and tag values, updated with latest upstream fixes."
HOMEPAGE="https://github.com/Yuego/django-tagging"
EGIT_REPO_URI="git://github.com/Yuego/django-tagging.git"

LICENSE="as-is"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE=""

RDEPEND="dev-python/django
"

DEPEND="${RDEPEND}"

