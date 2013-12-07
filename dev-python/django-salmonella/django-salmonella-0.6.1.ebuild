# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="A raw_id_fields widget replacement that handles display of an
object's string value on change and can be overridden via a template."
HOMEPAGE="http://readthedocs.org/docs/django-salmonella/en/latest/"

EGIT_REPO_URI="https://github.com/lincolnloop/django-salmonella.git"
EGIT_COMMIT="b1a8b595075843fc8b85701fe6c5a9c5c2c6a67a"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ia64 ppc ppc64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.4
	"
DEPEND="dev-python/setuptools"

