# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..13} )
inherit distutils-r1

MY_P="pypydispatcher-${PV}"
DESCRIPTION="Multi-producer-multi-consumer signal dispatching mechanism"
HOMEPAGE="https://github.com/scrapy/pypydispatcher https://pypi.org/project/PyPyDispatcher/"
SRC_URI="https://github.com/scrapy/pypydispatcher/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}"/${MY_P}

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~ia64 ~ppc ~x86"

distutils_enable_tests unittest
