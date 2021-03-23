# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit toolchain-funcs

DESCRIPTION="A cross-platform W3C XML Schema to C++ data binding compiler"
HOMEPAGE="https://www.codesynthesis.com/products/xsd"
SRC_URI="https://www.codesynthesis.com/download/xsd/${PV%.*}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE="doc examples test zlib"

RDEPEND="dev-libs/xerces-c
	dev-libs/boost:=[threads]
	dev-cpp/libcutl
	>=dev-cpp/libxsd-frontend-2.0.0
	zlib? ( sys-libs/zlib:= )"
DEPEND="${RDEPEND}"
BDEPEND="dev-util/build
	dev-util/cli
	doc? ( app-doc/doxygen )"

PATCHES=( "${FILESDIR}/${PN}-4.0.0-disable_examples_and_tests.patch"
	"${FILESDIR}/${PN}-4.0.0-fix-include.patch" )

src_prepare() {
	default

	sed -i  -e "/^\$(out_base)\/cxx/d" \
		-e "s:\$(out_base)/cxx/\.install::" \
		-i doc/makefile || die "sed for doc/makefile failed"
}

src_configure() {
	# Maintainer notes:
	# * xqilla is not required, this is only whether or not to include the xpath
	#   examples which require xqilla
	mkdir -p \
		build/cxx/gnu \
		build/import/lib{ace,boost,cult,backend-elements,xerces-c,xqilla,xsd-frontend,z} \
		|| die "mkdir failed"

	cat >> build/configuration-dynamic.make <<- EOF || die "cat for build/ failed"
		xsd_with_zlib := $(usex zlib y n)
		xsd_with_ace := n
		xsd_with_xdr := y
		xsd_with_xqilla := y
		xsd_with_boost_date_time := y
		xsd_with_boost_serialization := y
	EOF

	cat >> build/cxx/configuration-dynamic.make <<- EOF || die "cat for build/cxx failed"
		cxx_id       := gnu
		cxx_optimize := n
		cxx_debug    := n
		cxx_rpath    := n
		cxx_pp_extra_options :=
		cxx_extra_options    := ${CXXFLAGS}
		cxx_ld_extra_options := ${LDFLAGS}
		cxx_extra_libs       :=
		cxx_extra_lib_paths  :=
	EOF

	cat >> build/cxx/gnu/configuration-dynamic.make <<- EOF || die "cat for build/cxx/gnu failed"
		cxx_gnu := $(tc-getCXX)
		cxx_gnu_libraries :=
		cxx_gnu_optimization_options :=
	EOF

	# cli
	cat >> build/import/cli/configuration-dynamic.make <<- EOF || die "cat for cli failed"
		cli_installed := y
	EOF

	# ace
	cat >> build/import/libace/configuration-dynamic.make <<- EOF || die "cat for libace failed"
		libace_installed := y
	EOF

	# boost
	cat >> build/import/libboost/configuration-dynamic.make <<- EOF || die "cat for boost failed"
		libboost_installed := y
		libboost_system := y
	EOF

	# libcutl
	cat >> build/import/libcutl/configuration-dynamic.make <<- EOF || die "cat for libcutl failed"
		libcutl_installed := y
	EOF

	# xerces-c
	cat >> build/import/libxerces-c/configuration-dynamic.make <<- EOF || die "cat for libxerces-c failed"
		libxerces_c_installed := y
	EOF

	# xqilla
	cat >> build/import/libxqilla/configuration-dynamic.make <<- EOF || die "cat for libxqilla failed"
		libxqilla_installed := y
	EOF

	# libxsd-frontend
	cat >> build/import/libxsd-frontend/configuration-dynamic.make <<- EOF || die "cat for libxsd-frontend failed"
		libxsd_frontend_installed := y
	EOF

	# zlib
	cat >> build/import/libz/configuration-dynamic.make <<- EOF || die "cat for libz failed"
		libz_installed := y
	EOF
}

src_compile() {
	emake verbose=1

	if use doc; then
		emake -C "${S}/doc/cxx/tree/reference" verbose=1
	fi
	if use test; then
		XERCESC_NLS_HOME="${EPREFIX}/usr/share/xerces-c/msg" emake -C tests verbose=1
	fi
}

src_test() {
	XERCESC_NLS_HOME="${EPREFIX}/usr/share/xerces-c/msg" emake -C tests test
}

src_install() {
	emake install_prefix="${ED}/usr" install

	# Renaming binary/manpage to avoid collision with mono-2.0's xsd/xsd2
	mv "${ED}"/usr/bin/xsd{,cxx} || die "mv for xsd failed"
	mv "${ED}"/usr/share/man/man1/xsd{,cxx}.1 || die "mv for man failed"

	# remove incorrectly installed documentation
	rm -rf "${ED}/usr/share/doc" || die "rm failed"
	# clean out all non-html related files
	find doc/ \( -iname '*.1' -o -iname 'makefile*' -o -iname '*doxygen' \
		-o -iname '*doxytag' -o -iname '*html2ps' \) -delete || die "find failed"

	DOCS=( NEWS README FLOSSE )
	HTML_DOCS=( doc/. )
	einstalldocs

	newdoc libxsd/README README.libxsd
	newdoc libxsd/FLOSSE FLOSSE.libxsd

	if use examples; then
		dodoc -r examples
		docompress -x /usr/share/doc/"${PF}"/examples
	fi
}
