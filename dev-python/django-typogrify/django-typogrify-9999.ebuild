# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 git-r3

DESCRIPTION="Typogrify is a collection of Django template filters that help
prettify your web typography by preventing ugly quotes and widows and providing
CSS hooks to style some special cases."
HOMEPAGE="https://github.com/chrisdrackett/django-typogrify"

EGIT_REPO_URI="https://github.com/chrisdrackett/django-typogrify.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	~dev-python/smartypants-1.6
"
DEPEND="dev-python/setuptools"

