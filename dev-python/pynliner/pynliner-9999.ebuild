# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils git-2

DESCRIPTION="Python CSS-to-inline-styles conversion tool for HTML using BeautifulSoup and cssutils"
HOMEPAGE="https://github.com/rennat/pynliner"

EGIT_REPO_URI="https://github.com/rennat/pynliner.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND="dev-python/cssutils"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="pynliner"

src_test() {
	python setup.py test || die "tests failed"
}

