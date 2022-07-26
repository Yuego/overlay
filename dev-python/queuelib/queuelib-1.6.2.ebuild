# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=8

PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1

DESCRIPTION="Collection of persistent (disk-based) queues"

HOMEPAGE="https://github.com/scrapy/queuelib"

SRC_URI="https://github.com/scrapy/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="test"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
	)"

RDEPEND=""

python_test() {
	nosetests queuelib/tests/ || die "Tests failed under ${EPYTHON}"
}
