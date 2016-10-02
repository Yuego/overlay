# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Creating delicious APIs for Django apps since 2010."
HOMEPAGE="http://tastypieapi.org/ https://github.com/django-tastypie/django-tastypie"

EGIT_REPO_URI="git://github.com/toastdriven/django-tastypie.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="digest lxml pyyaml biplist"

RDEPEND=">=dev-python/django-1.5
	>=dev-python/mimeparse-0.1.3
	>=dev-python/python-dateutil-2.1
	digest? ( dev-python/python-digest )
	lxml? ( dev-python/lxml )
	pyyaml? ( dev-python/pyyaml )
	biplist? ( dev-python/biplist )
	"
DEPEND="dev-python/setuptools"
