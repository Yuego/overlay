# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{8..13} pypy3 )

inherit distutils-r1

DESCRIPTION="Tech Docs Dev Package"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="+scrapy"

RDEPEND="
	sys-apps/file[python]

	>=dev-python/django-3.0[${PYTHON_USEDEP}]
	dev-python/django-constance[${PYTHON_USEDEP}]
	dev-python/vincode[${PYTHON_USEDEP}]
	scrapy? (
		dev-python/scrapy[${PYTHON_USEDEP}]
		dev-python/scrapy-deltafetch[${PYTHON_USEDEP}]
		dev-python/scrapy-djangoitem[${PYTHON_USEDEP}]
		dev-python/user_agent[${PYTHON_USEDEP}]
	)
	dev-python/dawg[${PYTHON_USEDEP}]
	dev-python/django-downloadview[${PYTHON_USEDEP}]
	dev-python/PyMuPDF[${PYTHON_USEDEP}]
	>=dev-python/textract-1.6.4-r4[${PYTHON_USEDEP}]

	dev-python/python-dateutil[${PYTHON_USEDEP}]

	dev-python/django-crispy-forms[${PYTHON_USEDEP}]
	>=dev-python/crispy-bootstrap5-0.4[${PYTHON_USEDEP}]

	dev-python/sorl-watermark[${PYTHON_USEDEP}]

	>=dev-python/anticaptcha-1.7-r2[${PYTHON_USEDEP}]
	>=dev-python/django-easy-faq-1.3-r1[${PYTHON_USEDEP}]
	>=dev-python/martor-1.6.13[${PYTHON_USEDEP}]

	dev-python/openpyxl[${PYTHON_USEDEP}]
	dev-python/js2py[${PYTHON_USEDEP}]

	dev-python/tqdm[${PYTHON_USEDEP}]

	dev-python/django-rest-framework[${PYTHON_USEDEP}]
	dev-python/python-slugify[${PYTHON_USEDEP}]
"

DEPEND=""

S="${WORKDIR}"

src_prepare(){
	eapply_user
}

src_compile(){
	echo ''
}

src_install(){
	echo ''
}


