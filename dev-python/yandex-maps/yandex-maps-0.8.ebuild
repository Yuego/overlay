# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Yandex maps API"
HOMEPAGE="https://github.com/Yuego/yandex-maps"

SRC_URI="https://github.com/Yuego/yandex-maps/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.5
	dev-python/httplib2
"
DEPEND="dev-python/setuptools"

