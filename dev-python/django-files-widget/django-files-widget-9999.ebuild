# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Django AJAX form widgets and model fields for multiple files/images upload with progress bar"
HOMEPAGE="https://github.com/Yuego/django-files-widget"

EGIT_REPO_URI="git://github.com/Yuego/django-files-widget.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.7
	dev-python/pillow
	dev-python/sorl-thumbnail
"
DEPEND="dev-python/setuptools"
