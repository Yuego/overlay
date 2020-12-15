# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8,9} pypy3 )

inherit distutils-r1

DESCRIPTION="A wiki system with complex functionality for
simple integration and a superb interface."

HOMEPAGE="https://github.com/django-wiki/django-wiki"

SRC_URI="https://github.com/django-wiki/django-wiki/archive/releases/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE="test"

S="${WORKDIR}/${PN}-releases-${PV}/"

RDEPEND="
	>=dev-python/django-2.1[${PYTHON_USEDEP}]
	<dev-python/django-3.2

	>=dev-python/bleach-3.1[${PYTHON_USEDEP}]
	<dev-python/bleach-3.2

	dev-python/pillow[${PYTHON_USEDEP}]

	>=dev-python/django-nyt-1.1.5[${PYTHON_USEDEP}]
	<dev-python/django-nyt-1.2

	>=dev-python/django-mptt-0.11[${PYTHON_USEDEP}]
	<dev-python/django-mptt-0.12

	>=dev-python/django-sekizai-1.1.0[${PYTHON_USEDEP}]

	>=dev-python/sorl-thumbnail-12.6.2[${PYTHON_USEDEP}]
	<dev-python/sorl-thumbnail-13

	>=dev-python/markdown-3.1[${PYTHON_USEDEP}]
	<dev-python/markdown-3.3.0
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/pytest-runner[${PYTHON_USEDEP}]
	)
"

src_prepare(){
	sed -i "s/\"pytest-runner\",//g" setup.py
	distutils-r1_src_prepare
}
