# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python3_{3,4,5,6,7} pypy )

inherit eutils distutils-r1

DESCRIPTION="Faker is a Python package that generates fake data for you. http://www.joke2k.net/faker"
HOMEPAGE="https://github.com/joke2k/faker"

SRC_URI="https://github.com/joke2k/faker/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S="$WORKDIR/faker-$PV"
RDEPEND="
	>=dev-python/python-dateutil-2.4[${PYTHON_USEDEP}]
	>=dev-python/six-1.10[${PYTHON_USEDEP}]
	>=dev-python/unidecode-1.2[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
