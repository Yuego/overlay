# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy )

inherit distutils-r1 python-r1

DESCRIPTION="django-allauth is a reusable Django app that allows for both local and social authentication, with flows that just work."
HOMEPAGE="http://www.intenct.nl/projects/django-allauth/"

SRC_URI="https://github.com/pennersr/django-allauth/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.4.3
	>=dev-python/requests-2.0
	>=dev-python/requests-oauthlib-0.3.0

	$(python_gen_cond_dep ">=dev-python/python-openid-2.2.5" 'python2*')
	$(python_gen_cond_dep ">=dev-python/python3-openid-3.0.1" 'python3*')
"

DEPEND="dev-python/setuptools"
