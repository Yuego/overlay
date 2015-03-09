# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy2_0 )

inherit eutils distutils-r1 git-2

DESCRIPTION="Translates Django models using a registration approach."
HOMEPAGE="https://github.com/deschler/django-modeltranslation"

EGIT_REPO_URI="git://github.com/deschler/django-modeltranslation.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.4	
"
DEPEND="dev-python/setuptools"

