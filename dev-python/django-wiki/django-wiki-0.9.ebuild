# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

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
	<dev-python/django-4.2

	>=dev-python/bleach-5[${PYTHON_USEDEP}]
	dev-python/tinycss2[${PYTHON_USEDEP}]

	dev-python/pillow[${PYTHON_USEDEP}]

	>=dev-python/django-nyt-1.2.2[${PYTHON_USEDEP}]
	<dev-python/django-nyt-1.3

	>=dev-python/django-mptt-0.13[${PYTHON_USEDEP}]

	>=dev-python/django-sekizai-1.1.0[${PYTHON_USEDEP}]

	>=dev-python/sorl-thumbnail-12.8[${PYTHON_USEDEP}]
	<dev-python/sorl-thumbnail-13[${PYTHON_USEDEP}]

	>=dev-python/markdown-3.3[${PYTHON_USEDEP}]
	<dev-python/markdown-3.4[${PYTHON_USEDEP}]
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
