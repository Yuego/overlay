# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python2_7 pypy2_0 )

inherit distutils-r1

DESCRIPTION="A BitField extension for Django Models"
HOMEPAGE="https://github.com/disqus/django-bitfield"

SRC_URI="https://github.com/disqus/django-bitfield/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.2
"
DEPEND="dev-python/setuptools
	>=dev-python/nose-1
"



