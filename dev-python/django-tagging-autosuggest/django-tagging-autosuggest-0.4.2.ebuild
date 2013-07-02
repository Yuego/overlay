# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4

inherit distutils

DESCRIPTION="This Django reusable app extends djang-tagging and provides you with a tab editing widget and autocompletion."
HOMEPAGE="https://github.com/Yuego/django-tagging-autosuggest"
SRC_URI="https://github.com/Yuego/django-tagging-autosuggest/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="as-is"
KEYWORDS="amd64 x86"
SLOT="0"
IUSE=""

RDEPEND=">=dev-python/django-1.4
"

DEPEND="${RDEPEND}"

