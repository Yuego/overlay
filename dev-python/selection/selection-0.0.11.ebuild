# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="API to extract data from HTML and XML documents"
HOMEPAGE="https://github.com/lorien/selection"

EGIT_REPO_URI="git://github.com/lorien/selection.git"
GIT_COMMIT="cc39b227847540a57df31b5d4db85b4c7a728c59"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	dev-python/lxml
	dev-python/six
	dev-python/weblib
"
DEPEND="dev-python/setuptools"
