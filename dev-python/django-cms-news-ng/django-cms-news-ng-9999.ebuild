# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/html5lib/html5lib-0.95.ebuild,v 1.3 2012/08/02 21:59:05 neurogeek Exp $

EAPI="4"

PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils git-2

DESCRIPTION="A advanced news plugin for django-cms based on cmsplugin-news"
HOMEPAGE="https://bitbucket.org/Yuego/cmsplugin-news-ng"
EGIT_REPO_URI="https://Yuego@bitbucket.org/Yuego/cmsplugin-news-ng.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~x86-fbsd"
IUSE=""

S="${WORKDIR}/cmsplugin-news-ng"

DEPEND="dev-python/setuptools
	dev-python/django-cms
	dev-python/django-hvad
"
RDEPEND=""

PYTHON_MODNAME="cmsplugin_news_ng"