# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Django app to allow for a simple yet feature rich faq app"
HOMEPAGE="https://github.com/dragoncommits/django-easy-faq"

EGIT_REPO_URI="https://github.com/Yuego/django-easy-faq.git"
EGIT_COMMIT="dffb64b43001cea291b17325cd4a49a66c028e70"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/django-3.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
