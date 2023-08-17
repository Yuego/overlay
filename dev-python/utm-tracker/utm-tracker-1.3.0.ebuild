# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{9..12} pypy3 )

inherit distutils-r1

DESCRIPTION="Django app for extracting and storing UTM tracking values"
HOMEPAGE="https://github.com/yunojuno/django-utm-tracker"

SRC_URI="https://github.com/yunojuno/django-utm-tracker/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

S="${WORKDIR}/django-${P}"

RDEPEND="
	>=dev-python/django-3.2[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/poetry-core[${PYTHON_USEDEP}]
"
