# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1

DESCRIPTION="Notification system for Django with batteries included:
Email digests, user settings, JSON API"

HOMEPAGE="https://github.com/django-wiki/django-nyt"

SRC_URI="https://github.com/django-wiki/django-nyt/archive/refs/tags/stable/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

S="${WORKDIR}/${PN}-stable-${PV}"


RDEPEND="
	>=dev-python/django-2.2[${PYTHON_USEDEP}]
	<dev-python/django-4.1[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
