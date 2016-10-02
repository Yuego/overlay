# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy pypy3 )

ESVN_REPO_URI="http://django-comment-utils.googlecode.com/svn/trunk/"

inherit distutils-r1 subversion

MY_P="comment_utils-${PV}"

DESCRIPTION="Utilities for Django's comment system"
HOMEPAGE="http://code.google.com/p/django-comment-utils/"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

DOCS="docs/* CHANGELOG.txt README.txt"

S="${WORKDIR}/${MY_P}"

src_install() {
	distutils-r1_python_version

	site_pkgs="$(python_get_sitedir)"
	export PYTHONPATH="${PYTHONPATH}:${D}/${site_pkgs}"
	dodir ${site_pkgs}

	distutils-r1_src_install
}
