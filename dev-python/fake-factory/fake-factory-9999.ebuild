# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit eutils distutils-r1 git-r3

DESCRIPTION="Faker is a Python package that generates fake data for you. http://www.joke2k.net/faker"
HOMEPAGE="https://github.com/joke2k/faker"

EGIT_REPO_URI="git://github.com/joke2k/faker.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/python-dateutil-2.4
	dev-python/six
"
DEPEND="dev-python/setuptools"
