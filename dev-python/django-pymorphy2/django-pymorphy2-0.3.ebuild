# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Django and PyMorphy2 integration"
HOMEPAGE="https://github.com/Yuego/django-pymorphy2"

SRC_URI="https://github.com/Yuego/django-pymorphy2/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.5
	>=dev-python/pymorphy2-0.7
	dev-python/pymorphy2-dicts
"
DEPEND="dev-python/setuptools"

