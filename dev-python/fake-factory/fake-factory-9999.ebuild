# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit eutils distutils-r1 git-r3

DESCRIPTION="Faker is a Python package that generates fake data for you. http://www.joke2k.net/faker"
HOMEPAGE="https://github.com/joke2k/faker"

EGIT_REPO_URI="git://github.com/joke2k/faker.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

S="$WORKDIR/faker-$PV"
RDEPEND="
	>=dev-python/python-dateutil-2.4[${PYTHON_USEDEP}]
	>=dev-python/six-1.10[${PYTHON_USEDEP}]
	>=dev-python/unidecode-1.2[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
