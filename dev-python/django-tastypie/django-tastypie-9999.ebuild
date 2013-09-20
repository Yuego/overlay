# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7,3_3} pypy{1_9,2_0} )

inherit distutils-r1 git-2

DESCRIPTION="Creating delicious APIs for Django apps since 2010."
HOMEPAGE="http://tastypieapi.org/"

EGIT_REPO_URI="git://github.com/toastdriven/django-tastypie.git"

LICENSE="as-is"
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

