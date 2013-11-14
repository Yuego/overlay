# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="ompresses linked and inline javascript or CSS into a single cached file."
HOMEPAGE="https://github.com/jezdez/django_compressor"

EGIT_REPO_URI="https://github.com/jezdez/django_compressor.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	dev-python/django-appconf
	
	<dev-python/beautifulsoup-4.0
	dev-python/html5lib
	dev-python/lxml

	dev-java/yuicompressor

	dev-python/versiontools
	"
DEPEND="dev-python/setuptools"


