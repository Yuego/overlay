# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION="Приложение для работы с базой данных ФИАС в Django"
HOMEPAGE="https://github.com/Yuego/django-fias"

EGIT_REPO_URI="https://github.com/Yuego/django-fias"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="mysql"
RESTRICT="test"

RDEPEND="
	=dev-python/django_fias_dev-${PV}[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
