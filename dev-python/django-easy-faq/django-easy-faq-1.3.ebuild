# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Django app to allow for a simple yet feature rich faq app"
HOMEPAGE="https://github.com/dragoncommits/django-easy-faq"

EGIT_REPO_URI="https://github.com/dragoncommits/django-easy-faq.git"
EGIT_COMMIT="23a7a82ae20ba12f6056166791ffe6e5792d8eb6"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/django-3.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
