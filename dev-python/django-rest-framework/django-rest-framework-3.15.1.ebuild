# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )

inherit distutils-r1

DESCRIPTION="Awesome web-browseable Web APIs."
HOMEPAGE="https://github.com/tomchristie/django-rest-framework"

SRC_URI="https://github.com/tomchristie/django-rest-framework/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="timezone markdown guardian +filter core yaml"
RESTRICT="test"

RDEPEND="
	>=dev-python/django-4.2[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]

	markdown? ( >=dev-python/markdown-3.3.7[${PYTHON_USEDEP}] )
	guardian? ( 
		>=dev-python/django-guardian-2.4.0[${PYTHON_USEDEP}] 
		<dev-python/django-guardian-2.5.0[${PYTHON_USEDEP}] 
	)
	filter? ( >=dev-python/django-filter-2.2.0[${PYTHON_USEDEP}] )
	core? (
		=dev-python/coreapi-2.3.1[${PYTHON_USEDEP}]
		=dev-python/coreschema-0.0.4[${PYTHON_USEDEP}]
	)

	yaml? (
		dev-python/pyyaml[${PYTHON_USEDEP}]
	)
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
