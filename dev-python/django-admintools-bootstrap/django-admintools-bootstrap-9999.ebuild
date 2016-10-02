# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="https://bitbucket.org/salvator/django-admintools-bootstrap"
HOMEPAGE="https://bitbucket.org/salvator/django-admintools-bootstrap/"

EGIT_REPO_URI="git://github.com/buttscicles/django-admintools-bootstrap.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	>=dev-python/django-admin-tools-0.4.1
	>=dev-python/beautifulsoup-3.2.0
	>=dev-python/django-appconf-0.4.1
	>=dev-python/versiontools-1.8.2
"
DEPEND="dev-python/setuptools"

