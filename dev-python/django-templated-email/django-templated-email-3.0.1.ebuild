# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION="A Django oriented templated email sending class"
HOMEPAGE="https://github.com/vintasoftware/django-templated-email"

EGIT_REPO_URI="https://github.com/vintasoftware/django-templated-email.git"
EGIT_COMMIT="6440f125f118e8168af61d941a479438b02a40b4"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/django-render-block-0.5[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
