# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit eutils distutils git-2

DESCRIPTION="An Advanced Django CMS."
HOMEPAGE="https://github.com/divio/django-cms"

EGIT_REPO_URI="https://github.com/Yuego/django-cms.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE="test"

RDEPEND=">=dev-python/django-1.3
	dev-python/django-nested-sets
	dev-python/django-classy-tags
	dev-python/django-sekizai
	dev-python/south
	dev-python/pip
	dev-python/imaging
	dev-python/html5lib
	test? ( ~dev-python/jinja-2.6
		=dev-python/pillow-1.7.7
		app-misc/sphinx
		~dev-python/pygments-1.5
		~dev-python/django-reversion-1.6
	)
	"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="cms"

src_test() {
	python setup.py test || die "tests failed"
}

