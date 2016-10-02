# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="user notification management for the Django web framework"
HOMEPAGE="https://github.com/pinax/django-notification"

EGIT_REPO_URI="git://github.com/pinax/django-notification.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.4"
DEPEND="dev-python/setuptools"

