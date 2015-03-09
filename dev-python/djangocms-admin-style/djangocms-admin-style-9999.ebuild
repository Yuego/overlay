# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="An Advanced Django CMS."
HOMEPAGE="https://github.com/divio/djangocms-admin-style"

EGIT_REPO_URI="git://github.com/divio/djangocms-admin-style.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE="test"

RDEPEND="
	>=dev-python/django-1.6
"
DEPEND="dev-python/setuptools"

