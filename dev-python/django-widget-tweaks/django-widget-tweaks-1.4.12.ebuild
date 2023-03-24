# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{6..10} pypy3 )

inherit distutils-r1

DESCRIPTION="Tweak the form field rendering in templates"
HOMEPAGE="https://github.com/jazzband/django-widget-tweaks"

SRC_URI="https://github.com/jazzband/django-widget-tweaks/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/django-2.2[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools-scm[${PYTHON_USEDEP}]
"

src_prepare(){
	distutils-r1_src_prepare

	sed -i "s#version=.*##g" setup.py
	sed -i "s#use_scm_.*##g" setup.py
	sed -i "s#\"setuptools_scm\"##g" setup.py
}
