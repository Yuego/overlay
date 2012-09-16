# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=4

EGIT_REPO_URI="https://github.com/stephenmcd/django-email-extras.git"

inherit distutils eutils git-2

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

