# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Reusable, generic mixins for Django"
HOMEPAGE="https://github.com/brack3t/django-braces"

SRC_URI="https://github.com/brack3t/django-braces/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.5
	dev-python/six
"
DEPEND="dev-python/setuptools"
