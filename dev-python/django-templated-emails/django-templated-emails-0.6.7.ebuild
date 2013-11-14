# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="A simple app (that works similar to django-notification) that
allows you to send emails by specifying a short.txt (subject), email.txt (plain
text), and email.html (html email, optional) in a folder. When you send the
email you only have to specify the folder and the context."
HOMEPAGE="https://github.com/philippWassibauer/templated-emails"

EGIT_REPO_URI="https://github.com/aldarund/templated-emails.git"
EGIT_COMMIT="c097e6f0f3ca28d3041c6ae5c63000400d017c77"

LICENSE="as-is"
SLOT="0"
KEYWORDS="amd64 ia64 ppc ppc64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	dev-python/cssutils
	dev-python/pynliner"
DEPEND="dev-python/setuptools"

