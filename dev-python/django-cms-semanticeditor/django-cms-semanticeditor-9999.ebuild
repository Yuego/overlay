# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 mercurial

DESCRIPTION="Semantic Editor is a Django CMS plugin for text editing."
HOMEPAGE="https://bitbucket.org/spookylukey/semanticeditor/overview"

EHG_REPO_URI="https://bitbucket.org/spookylukey/semanticeditor"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	>=dev-python/django-cms-2
	>=dev-python/pyquery-0.3.1
	dev-python/lxml
"
DEPEND="dev-python/setuptools"

