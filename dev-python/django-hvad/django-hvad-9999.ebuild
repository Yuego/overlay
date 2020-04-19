# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Painless translations in django, using the regular ORM. Integrates
easily into existing projects and apps. Easy convertible from
django-multilingual-ng."
HOMEPAGE="https://github.com/KristianOellegaard/django-hvad"

EGIT_REPO_URI="https://github.com/KristianOellegaard/django-hvad.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.2"
DEPEND="dev-python/setuptools"
