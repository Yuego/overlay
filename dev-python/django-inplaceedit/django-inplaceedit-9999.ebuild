# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Django application that allows you to inline edition of some data from the database"
HOMEPAGE="http://pypi.python.org/pypi/django-inplaceedit"

EGIT_REPO_URI="https://github.com/Yuego/django-inplaceedit.git"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE="+extra"

RDEPEND=">=dev-python/django-1.3
"

DEPEND="dev-python/setuptools
	extra? ( dev-python/django-inplaceedit-extra-fields )"

