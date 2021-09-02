# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Notification system for Django with batteries included:
Email digests, user settings, JSON API"

HOMEPAGE="https://github.com/django-wiki/django-nyt"

EGIT_COMMIT="6f58f01a1fea017fe6a8e3091e373c0a6fc0f555"
EGIT_REPO_URI="https://github.com/django-wiki/django-nyt.git"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE=""


RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
	<dev-python/django-3.3
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
