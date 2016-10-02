# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="user notification management for the Django web framework"
HOMEPAGE="https://github.com/pinax/django-notification"

SRC_URI="https://github.com/pinax/django-notification/archive/1.1.1.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.4"
DEPEND="dev-python/setuptools"

