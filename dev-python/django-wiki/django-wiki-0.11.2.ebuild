# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{10..13} pypy3 )
DISTUTILS_USE_PEP517=hatchling

inherit distutils-r1

DESCRIPTION="A wiki system with complex functionality for
simple integration and a superb interface."

HOMEPAGE="https://github.com/django-wiki/django-wiki"

SRC_URI="https://github.com/django-wiki/django-wiki/archive/releases/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE="test"
RESTRICT="test"

S="${WORKDIR}/${PN}-releases-${PV}/"

RDEPEND="
	>=dev-python/django-4.2[${PYTHON_USEDEP}]
	<dev-python/django-5.2

	>=dev-python/bleach-6[${PYTHON_USEDEP}]
	<dev-python/bleach-7[${PYTHON_USEDEP}]

	dev-python/pillow[${PYTHON_USEDEP}]

	>=dev-python/django-nyt-1.4.1[${PYTHON_USEDEP}]
	<dev-python/django-nyt-1.5

	>=dev-python/django-mptt-0.13[${PYTHON_USEDEP}]
	<dev-python/django-mptt-0.17[${PYTHON_USEDEP}]

	>=dev-python/django-sekizai-1.1.0[${PYTHON_USEDEP}]

	>=dev-python/sorl-thumbnail-12.8[${PYTHON_USEDEP}]
	<dev-python/sorl-thumbnail-13[${PYTHON_USEDEP}]

	>=dev-python/markdown-3.4[${PYTHON_USEDEP}]
	<dev-python/markdown-3.7[${PYTHON_USEDEP}]

	>=dev-python/pymdown-extensions-10.5[${PYTHON_USEDEP}]
	<dev-python/pymdown-extensions-10.6[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/hatchling[${PYTHON_USEDEP}]
	dev-python/hatch-build-scripts[${PYTHON_USEDEP}]
	test? (
		dev-python/pytest-runner[${PYTHON_USEDEP}]
	)
"

