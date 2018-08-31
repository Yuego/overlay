# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Twitter Bootstrap for Django Form"
HOMEPAGE="https://github.com/tzangms/django-bootstrap-form"

EGIT_REPO_URI="git://github.com/tzangms/django-bootstrap-form.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.5
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
