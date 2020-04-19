# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

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

RDEPEND=">=dev-python/django-1.4[${PYTHON_USEDEP}]
	dev-python/cssutils[${PYTHON_USEDEP}]
	dev-python/pynliner[${PYTHON_USEDEP}]
	notification? ( dev-python/django-notification[${PYTHON_USEDEP}] )"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/templated-emails-${PV}"
