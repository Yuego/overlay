# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="A BitField extension for Django Models"
HOMEPAGE="https://github.com/disqus/django-bitfield"

SRC_URI="https://github.com/disqus/django-bitfield/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="-test"

RDEPEND="
	>=dev-python/django-1.7
	dev-python/six
"
DEPEND="dev-python/setuptools"
