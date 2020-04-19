# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="A simple app (that works similar to django-notification) that
allows you to send emails by specifying a short.txt (subject), email.txt (plain
text), and email.html (html email, optional) in a folder. When you send the
email you only have to specify the folder and the context."
HOMEPAGE="https://github.com/philippWassibauer/templated-emails"

EGIT_REPO_URI="git://github.com/Yuego/templated-emails.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.3[${PYTHON_USEDEP}]
	dev-python/cssutils[${PYTHON_USEDEP}]
	dev-python/pynliner[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
