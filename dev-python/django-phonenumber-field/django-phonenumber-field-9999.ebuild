# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="A Django library which interfaces with python-phonenumbers"
HOMEPAGE="https://github.com/stefanfoulis/django-phonenumber-field"

EGIT_REPO_URI="https://github.com/stefanfoulis/django-phonenumber-field.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-2.2[${PYTHON_USEDEP}]
	>=dev-python/phonenumbers-7.0.2[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/wheel[${PYTHON_USEDEP}]
"

DISTUTILS_USE_SETUPTOOLS=pyproject.toml

src_prepare(){
	distutils-r1_src_prepare

	sed -i "s#setuptools.build_meta:__legacy__#setuptools.build_meta#g" pyproject.toml
}

