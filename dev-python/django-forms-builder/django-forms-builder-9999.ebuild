# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=4

EGIT_REPO_URI="https://github.com/stephenmcd/django-forms-builder.git"

inherit distutils eutils git-2

DESCRIPTION="A Django reusable app providing the ability for admin users to create their own forms."
HOMEPAGE="https://github.com/stephenmcd/django-forms-builder"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="email"

RDEPEND="dev-python/django
	dev-python/unidecode
	email? ( dev-python/django-email-extras )
	"
DEPEND="${RDEPEND}"

DOCS="docs/* README.rst"

