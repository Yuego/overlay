# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Extra fields to django-inplaceedit"
HOMEPAGE="https://github.com/goinnn/django-inplaceedit-extra-fields"

EGIT_REPO_URI="https://github.com/Yuego/django-inplaceedit-extra-fields.git"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE="+extra"

RDEPEND=">=dev-python/django-1.3
"

DEPEND="dev-python/setuptools"

