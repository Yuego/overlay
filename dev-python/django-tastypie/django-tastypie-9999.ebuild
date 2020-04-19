# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Creating delicious APIs for Django apps since 2010."
HOMEPAGE="http://tastypieapi.org/"

EGIT_REPO_URI="git://github.com/toastdriven/django-tastypie.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="digest lxml pyyaml biplist"

RDEPEND="
	>=dev-python/django-1.8[${PYTHON_USEDEP}]
	>=dev-python/mimeparse-0.1.4[${PYTHON_USEDEP}]
	!=dev-python/mimeparse-1.5
	>=dev-python/python-dateutil-2.1[${PYTHON_USEDEP}]
	digest? ( dev-python/python-digest[${PYTHON_USEDEP}] )
	lxml? ( dev-python/lxml[${PYTHON_USEDEP}] )
	pyyaml? ( dev-python/pyyaml[${PYTHON_USEDEP}] )
	biplist? ( dev-python/biplist[${PYTHON_USEDEP}] )
	"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
