# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="UNOFFICIAL and often experimental version of FeinCMS."
HOMEPAGE="https://github.com/matthiask/feincms"

SRC_URI="https://github.com/feincms/feincms/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.7
	>=dev-python/django-mptt-0.7.1
	>=dev-python/pillow-2.0.0
	>=dev-python/feedparser-5.0.0
	>=dev-python/pytz-2014.10
"
DEPEND="dev-python/setuptools"

src_test() {
	python setup.py test || die "tests failed"
}

