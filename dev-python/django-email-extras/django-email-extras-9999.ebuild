# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy pypy3 )

EGIT_REPO_URI="https://github.com/stephenmcd/django-email-extras.git"

inherit distutils-r1 git-r3

DESCRIPTION="A Django reusable app providing the ability to send PGP encrypted and multipart emails using Django templates."
HOMEPAGE="https://github.com/stephenmcd/django-email-extras"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="dev-python/django
	dev-python/python-gnupg
	"
DEPEND="${RDEPEND}"

DOCS="docs/* README.rst"
