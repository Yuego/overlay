# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Arkestra extends Django CMS to provide an intelligent semantic web publishing system for organisations and institutions."
HOMEPAGE="https://github.com/evildmp/Arkestra"

EGIT_REPO_URI="https://github.com/evildmp/Arkestra.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	>=dev-python/django-cms-2.3.4
	dev-python/beautifulsoup
	dev-python/pillow
	dev-python/django-typogrify
	dev-python/django-filer
	dev-python/django-cms-semanticeditor
"
DEPEND="dev-python/setuptools"

