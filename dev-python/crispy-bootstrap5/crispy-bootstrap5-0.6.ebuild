# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1

DESCRIPTION="Bootstrap5 template pack for django-crispy-forms"
HOMEPAGE="https://github.com/django-crispy-forms"

SRC_URI="https://github.com/django-crispy-forms/crispy-bootstrap5/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/django-3.2[${PYTHON_USEDEP}]
	>=dev-python/django-crispy-forms-1.13.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
