# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2

inherit distutils

DESCRIPTION="Generic tagging application for Django"
HOMEPAGE="http://code.google.com/p/django-tagging/"
SRC_URI="http://django-tagging.googlecode.com/files/${P}.tar.gz"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"
