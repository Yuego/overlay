# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{3_2,3_3} )

inherit distutils-r1

DESCRIPTION="Disqus API bindings for Python http://disqus.com/api/"
HOMEPAGE="https://github.com/disqus/disqus-python"

SRC_URI="https://github.com/disqus/disqus-python/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="-test"

RDEPEND="
	>=dev-python/nose-1.0
	test? (
		dev-python/unittest2
		dev-python/mock
	)
"
DEPEND="dev-python/setuptools"

S="${WORKDIR}/disqus-python-${PV}"
