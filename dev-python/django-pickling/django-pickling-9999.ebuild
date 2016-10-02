# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Makes django models pickling 2-3 times faster and compact."
HOMEPAGE="https://github.com/Suor/django-pickling"

EGIT_REPO_URI="https://github.com/Suor/django-pickling.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.4"
DEPEND="dev-python/setuptools"
