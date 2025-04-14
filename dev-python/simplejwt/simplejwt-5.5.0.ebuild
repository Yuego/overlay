# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION="JSON Web Token authentication plugin for the Django REST Framework"
HOMEPAGE="https://github.com/jazzband/djangorestframework-simplejwt"

#SRC_URI="https://github.com/jazzband/djangorestframework-simplejwt/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
EGIT_REPO_URI="https://github.com/jazzband/djangorestframework-simplejwt.git"
EGIT_TAG="v${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/django-4.2[${PYTHON_USEDEP}]
	>=dev-python/django-rest-framework-3.14[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-1.7.1[${PYTHON_USEDEP}]
	<dev-python/pyjwt-2.10.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

#S="${WORKDIR}/djangorestframework-simplejwt-${PV}"
