# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Compresses linked and inline javascript or CSS into a single cached file."
HOMEPAGE="https://github.com/jezdez/django_compressor"

SRC_URI="https://github.com/jezdez/django_compressor/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ia64 ppc ppc64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.4[${PYTHON_USEDEP}]
	>=dev-python/django-appconf-1.0[${PYTHON_USEDEP}]

	>=dev-python/rcssmin-1.0.6[${PYTHON_USEDEP}]
	>=dev-python/rjsmin-1.0.12[${PYTHON_USEDEP}]
	"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
