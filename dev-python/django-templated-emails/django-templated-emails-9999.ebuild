# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils git-2

DESCRIPTION="A simple app (that works similar to django-notification) that
allows you to send emails by specifying a short.txt (subject), email.txt (plain
text), and email.html (html email, optional) in a folder. When you send the
email you only have to specify the folder and the context."
HOMEPAGE="https://github.com/philippWassibauer/templated-emails"

EGIT_REPO_URI="https://github.com/philippWassibauer/templated-emails.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	dev-python/cssutils
	dev-python/pynliner"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="templated_emails"

src_test() {
	python setup.py test || die "tests failed"
}

