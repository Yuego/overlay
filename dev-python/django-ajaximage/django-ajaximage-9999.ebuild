# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1 git-r3

DESCRIPTION="Upload images via ajax. Images are optionally resized."
HOMEPAGE="https://github.com/bradleyg/django-ajaximage"

EGIT_REPO_URI="git://github.com/bradleyg/django-ajaximage.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.7
"
DEPEND="dev-python/setuptools"

