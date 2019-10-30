# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="A wiki system with complex functionality for
simple integration and a superb interface."

HOMEPAGE="https://github.com/django-wiki/django-wiki"

SRC_URI="https://github.com/django-wiki/django-wiki/archive/releases/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

S="${WORKDIR}/${PN}-releases-${PV}/"

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
	<dev-python/django-2.3

	>=dev-python/bleach-2.1[${PYTHON_USEDEP}]
	<dev-python/bleach-2.2

	dev-python/pillow[${PYTHON_USEDEP}]

	>=dev-python/django-nyt-1.1.3[${PYTHON_USEDEP}]
	<dev-python/django-nyt-1.2

	>=dev-python/django-mptt-0.9[${PYTHON_USEDEP}]
	<dev-python/django-mptt-0.10

	>=dev-python/django-sekizai-0.10[${PYTHON_USEDEP}]

	>=dev-python/sorl-thumbnail-12[${PYTHON_USEDEP}]
	<dev-python/sorl-thumbnail-13

	>=dev-python/markdown-2.6[${PYTHON_USEDEP}]
	<dev-python/markdown-2.7
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/pytest-runner[${PYTHON_USEDEP}]
"
