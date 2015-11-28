# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Something for Django"
HOMEPAGE="https://github.com/Yuego/django-v3dlibs"

EGIT_REPO_URI="https://github.com/Yuego/django-v3dlibs.git"
EGIT_BRANCH="develop"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.3
	dev-python/pillow
	dev-python/six
	dev-python/django-hosts
"
DEPEND="dev-python/setuptools"

