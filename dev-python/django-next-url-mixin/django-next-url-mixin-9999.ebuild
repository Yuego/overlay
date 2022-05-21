# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Next url mixin which is safe to phishing attacks"
HOMEPAGE="https://github.com/PetrDlouhy/django-next-url-mixin"

EGIT_REPO_URI="https://github.com/PetrDlouhy/django-next-url-mixin.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-2.2[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
