# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

EHG_REPO_URI="git://bitbucket.org/Yuego/django-registration.git"

inherit distutils-r1 mercurial

DESCRIPTION="A user-registration application for Django"
HOMEPAGE="http://www.bitbucket.org/ubernostrum/django-registration/wiki/Home"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

DOCS="docs/* AUTHORS CHANGELOG README"

S="${WORKDIR}/${PN}"

src_install() {
	distutils-r1_python_version

	site_pkgs="$(python_get_sitedir)"
	export PYTHONPATH="${PYTHONPATH}:${D}/${site_pkgs}"
	dodir ${site_pkgs}

	distutils-r1_src_install
}
