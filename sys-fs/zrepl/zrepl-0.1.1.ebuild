# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DESCRIPTION="zrepl is a one-stop ZFS backup & replication solution"
HOMEPAGE="https://zrepl.github.io/"
SLOT="0"
KEYWORDS="~amd64"
SRC_URI="https://github.com/zrepl/zrepl/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
RESTRICT="network-sandbox"
IUSE="doc"

if [ $PV == "9999" ] ; then
	EGIT_REPO_URI="https://github.com/zrepl/zrepl.git"
	#EGIT_CHECKOUT_DIR=""	
	inherit git-r3
fi

DEPEND=">=dev-lang/go-1.9
	dev-go/dep
	doc? ( >=dev-python/alabaster-0.7.11
	>=dev-python/Babel-2.6.0
	>=dev-python/certifi-2018.10.15
	>=dev-python/chardet-3.0.4
	>=dev-python/docutils-0.14
	>=dev-python/idna-2.7
	>=dev-python/imagesize-1.0.0
	>=dev-python/jinja-2.10
	>=dev-python/markupsafe-1.0
	>=dev-python/packaging-18.0
	>=dev-python/pygments-2.2.0
	>=dev-python/pyparsing-2.3.0
	>=dev-python/pytz-2018.7
	>=dev-python/requests-2.20.1
	>=dev-python/six-1.11.0
	>=dev-python/snowballstemmer-1.2.1
	>=dev-python/sphinx-1.8.2
	>=dev-python/sphinxcontrib-websupport-1.1.0
	>=dev-python/urllib3-1.24.1 )"

src_prepare () {
	eapply_user
	S="$WORKDIR/src/github.com/$PN"
	mkdir -p "$S" || die "Cannot mkdir $S"
	mv "$WORKDIR/$P" "$S/$PN" || die "Cannot move $WORKDIR/$P to $S/$PN"
	S="$S/$PN"
	cd "$S"
}

src_compile () {
	export GOPATH="$WORKDIR"
	dep ensure -v -vendor-only || die "Go dependencies failed"
	go build -o "$GOPATH/bin/stringer"      ./vendor/golang.org/x/tools/cmd/stringer || die "Cannot build stringer"
	go build -o "$GOPATH/bin/protoc-gen-go" ./vendor/github.com/golang/protobuf/protoc-gen-go  || die "Cannot build protoc-gen-go"
	go build -o "$GOPATH/bin/enumer"        ./vendor/github.com/alvaroloes/enumer || die "Cannot build enumer"
	go build -o "$GOPATH/bin/goimports"     ./vendor/golang.org/x/tools/cmd/goimports || die "Cannot build goimports"
	go build -o "$GOPATH/bin/golangci-lint" ./vendor/github.com/golangci/golangci-lint/cmd/golangci-lint || die "Cannot build golangci-lint"
	PATH="$GOPATH/bin:$PATH" make build ZREPL_VERSION="$PV" || die "Cannot build zrepl binary"
	use doc && PATH="$GOPATH/bin:$PATH" make docs ZREPL_VERSION="$PV" || die "Cannot build zrepl docs"
}

src_install () {
	dobin "$S/artifacts/zrepl"
}
