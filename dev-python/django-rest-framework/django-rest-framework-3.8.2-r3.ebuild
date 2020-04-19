# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python3_{3,4,5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="Awesome web-browseable Web APIs."
HOMEPAGE="https://github.com/tomchristie/django-rest-framework"

SRC_URI="https://github.com/tomchristie/django-rest-framework/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="timezone markdown guardian filter core"

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]

	markdown? ( >=dev-python/markdown-2.6.11[${PYTHON_USEDEP}] )
	guardian? ( >=dev-python/django-guardian-1.4.9[${PYTHON_USEDEP}] )
	filter? ( >=dev-python/django-filter-1.1.0[${PYTHON_USEDEP}] )
	core? (
		=dev-python/coreapi-2.3.1[${PYTHON_USEDEP}]
		=dev-python/coreschema-0.0.4[${PYTHON_USEDEP}]
	)
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
