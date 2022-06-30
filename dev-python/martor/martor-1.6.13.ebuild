# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1

DESCRIPTION="Markdown Editor plugin for Django"
HOMEPAGE="https://github.com/agusmakmun/django-markdown-editor"

SRC_URI="https://github.com/agusmakmun/django-markdown-editor/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/django-3.2[${PYTHON_USEDEP}]
	>=dev-python/markdown-3.3.4[${PYTHON_USEDEP}]
	>=dev-python/requests-2.12.4[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/django-markdown-editor-${PV}"
