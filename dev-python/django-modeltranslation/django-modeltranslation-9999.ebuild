# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit eutils distutils-r1 git-r3

DESCRIPTION="Translates Django models using a registration approach."
HOMEPAGE="https://github.com/deschler/django-modeltranslation"

EGIT_REPO_URI="git://github.com/deschler/django-modeltranslation.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.7
"
DEPEND="dev-python/setuptools"
