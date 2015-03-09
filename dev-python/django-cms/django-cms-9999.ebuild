# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="An Advanced Django CMS."
HOMEPAGE="https://github.com/divio/django-cms"

EGIT_REPO_URI="https://github.com/divio/django-cms.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE="test"

RDEPEND="
	>=dev-python/django-1.6
	<dev-python/django-nested-sets-0.5.3
	>=dev-python/django-nested-sets-0.5.1

	>=dev-python/django-classy-tags-0.5
	>=dev-python/django-sekizai-0.7
	>=dev-python/django-treebeard-3.0
	dev-python/imaging
	dev-python/html5lib

	dev-python/django-cms-admin-style

	test? ( ~dev-python/jinja-2.6
		=dev-python/pillow-1.7.7
		app-misc/sphinx
		~dev-python/pygments-1.5
		~dev-python/django-reversion-1.6
	)
	"
DEPEND="dev-python/setuptools"

