# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3} pypy )

inherit distutils-r1

DESCRIPTION="Django extension for postgresql bytea field and other usefull toos for dealing with binary data."
HOMEPAGE="https://github.com/niwibe/djorm-ext-pgbytea"

SRC_URI="https://github.com/niwibe/djorm-ext-pgbytea/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.3[postgres]
"
DEPEND="dev-python/setuptools"
