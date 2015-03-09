# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1

DESCRIPTION="A simple app (that works similar to django-notification) that
allows you to send emails by specifying a short.txt (subject), email.txt (plain
text), and email.html (html email, optional) in a folder. When you send the
email you only have to specify the folder and the context."
HOMEPAGE="https://github.com/Yuego/templated-emails"

SRC_URI="https://github.com/Yuego/templated-emails/archive/0.7.0.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="notification"

RDEPEND=">=dev-python/django-1.4
	dev-python/cssutils
	dev-python/pynliner
	notification? ( dev-python/django-notification )"
DEPEND="dev-python/setuptools"

S="${WORKDIR}/templated-emails-${PV}"
