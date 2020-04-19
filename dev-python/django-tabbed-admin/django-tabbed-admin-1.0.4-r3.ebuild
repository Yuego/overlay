# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python3_{5,6,7} pypy )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://pypi.org/project/django-tabbed-admin/ https://github.com/omji/django-tabbed-admin"

SRC_URI="https://github.com/omji/django-tabbed-admin/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
