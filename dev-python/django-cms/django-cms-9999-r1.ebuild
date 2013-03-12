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

RDEPEND=">=dev-python/django-1.3.1
	<dev-python/django-nested-sets-0.5.3
	>=dev-python/django-nested-sets-0.5.1

	>=dev-python/django-classy-tags-0.3.4.1
	>=dev-python/django-sekizai-0.7
	>=dev-python/south-0.7.2
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

