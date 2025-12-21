# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=8
PYTHON_COMPAT=( python3_{8..14} pypy3 )
DISTUTILS_USE_PEP517=no

inherit distutils-r1

LICENSE="MIT"

SRC_URI=""
DESCRIPTION="HPT Meta"
HOMEPAGE=""
SLOT="0"
KEYWORDS="x86 amd64"
IUSE="-debug"
RESTRICT="test"

RDEPEND="
	>=dev-python/django-3.0[${PYTHON_USEDEP}]
"

# Main Virtual
RDEPEND="${RDEPEND}
	virtual/web_server_common[${PYTHON_USEDEP}]
"

# Apps
RDEPEND="${RDEPEND}
	>=dev-python/hpt_core-0.2.1[${PYTHON_USEDEP}]
	>=dev-python/tech_docs_dev-4.0.1[${PYTHON_USEDEP}]

	dev-python/django-environ[${PYTHON_USEDEP}]
	dev-python/django-constance[${PYTHON_USEDEP}]
	dev-python/django-templated-email[${PYTHON_USEDEP}]
	dev-python/django-experiments[${PYTHON_USEDEP}]
"

# Libs
RDEPEND="${RDEPEND}
	dev-python/django-cacheops[${PYTHON_USEDEP}]
	dev-python/django-maintenance-mode[${PYTHON_USEDEP}]
	dev-python/django-redis[${PYTHON_USEDEP}]

	dev-python/vk_api[${PYTHON_USEDEP}]

	dev-python/django-appconf[${PYTHON_USEDEP}]
	dev-python/django-money[${PYTHON_USEDEP}]
	dev-python/django-treebeard[${PYTHON_USEDEP}]

	>=dev-python/django-phonenumber-field-8.0.0[${PYTHON_USEDEP}]
	>=dev-python/django-better-admin-arrayfield-1.4.1[${PYTHON_USEDEP}]
	>=dev-python/django-cookie-consent-0.8.0[${PYTHON_USEDEP}]

	dev-python/utm-tracker[${PYTHON_USEDEP}]

	dev-python/shortuuid[${PYTHON_USEDEP}]

	debug? (
		dev-python/django-debug-toolbar[${PYTHON_USEDEP}]
	)
"

# Frontend
RDEPEND="${RDEPEND}
"

# API
RDEPEND="${RDEPEND}
	app-crypt/certbot[${PYTHON_USEDEP}]
"

# ProxyList
RDEPEND="${RDEPEND}

"

DEPEND=""

S="${WORKDIR}"

src_prepare(){
	eapply_user
}

src_compile(){
	echo ''
}

src_install(){
	echo ''
}
