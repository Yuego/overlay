# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Django comments framework"
HOMEPAGE="https://github.com/django/django-contrib-comments"

EGIT_REPO_URI="git://github.com/django/django-contrib-comments.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.5
"
DEPEND="dev-python/setuptools"

src_prepare() {
    sed -i "s#exclude=\['tests'#exclude=\['tests','tests.*'#g" setup.py
    distutils-r1_src_prepare
}

