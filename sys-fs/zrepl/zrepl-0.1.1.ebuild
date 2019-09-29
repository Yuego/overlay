# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7} )
EGO_VENDOR=(
	"golang.org/x/tools d0ca3933b724e6be513276cc2edb34e10d667438 github.com/golang/tools"
	"github.com/pascaldekloe/name 0fd16699aae1833640fca52a937944c6f3b1d58c"
	"github.com/alvaroloes/enumer 6bcfe2edaac32ad71b88ce4cf92d34cd643e4ecb"
	"github.com/golangci/golangci-lint v1.15.0"
	"github.com/jinzhu/copier db4671f3a9b8df855e993f7c94ec5ef1ffb0a23b"
	"github.com/kr/pretty cfb55aafdaf3ec08f0db22699ab822c50091b1c4"
	"github.com/pkg/errors v0.8.0"
	"github.com/spf13/cobra b78744579491c1ceeaaa3b40205e56b0591b93a3"
	"github.com/stretchr/testify v1.1.4"
	"github.com/zrepl/yaml-config 08227ad854131f7dfcdfb12579fb73dd8a38a03a"
	"github.com/go-logfmt/logfmt v0.3.0"
	"github.com/problame/go-netssh 09d6bc45d284784cb3e5aaa1998513f37eb19cc6"
	"github.com/prometheus/client_golang e11c6ff8170beca9d5fd8b938e71165eeec53ac6"
	"github.com/golang/protobuf v1.2.0"
	"github.com/fatih/color v1.7.0"
	"github.com/gdamore/tcell v1.1.0"
	"google.golang.org/grpc v1.17.0 github.com/grpc/grpc-go"
	"github.com/google/uuid v1.1.1"
	"github.com/gdamore/encoding b23993cbb6353f0e6aa98d0ee318a34728f628b9"
	"golang.org/x/text v0.3.0 github.com/golang/text"
	"github.com/lucasb-eyer/go-colorful v1.0" 
	"github.com/mattn/go-runewidth v0.0.3" 
	"github.com/kr/text e2ffdb16a802fe2bb95e2e35ff34f0e53aeef34f" 
	"github.com/pkg/profile v1.2.1"
	"golang.org/x/net 351d144fa1fc0bd934e2408202be0c29f25e35a0 github.com/golang/net"
	"github.com/spf13/pflag v1.0.0" 
	"github.com/montanaflynn/stats v0.5.0"
	"github.com/yudai/gojsondiff v1.0.0"
	"github.com/sergi/go-diff v1.0.0"
	"github.com/yudai/golcs ecda9a501e8220fae3b4b600c3db4b0ba22cfc68"
	"github.com/beorn7/perks 3a771d992973f24aa725d07868b467d1ddfceafb"
	"github.com/prometheus/client_model 99fa1f4be8e564e8a6b613da7fa6f46c9edafc6c"
	"code.google.com/p/goprotobuf v1.3.2 github.com/golang/protobuf"
	"github.com/prometheus/common d0f7cd64bda49e08b22ae8a730aa57aa0db125d6"
	"github.com/matttproud/golang_protobuf_extensions v1.0.0"
	"github.com/prometheus/procfs 8b1c2da0d56deffdbb9e48d4414b4e674bd8083e"
	"golang.org/x/sys 1e83adbbebd0f5dc971915fd7e5db032c3d2b731 github.com/golang/sys"
	"google.golang.org/genproto bd91e49a0898e27abb88c339b432fa53d7497ac0 github.com/googleapis/go-genproto"
	"github.com/mattn/go-isatty v0.0.3"
	"golang.org/x/sync e225da77a7e68af35c70ccbf71af2b83e6acac3c github.com/golang/sync"
	"github.com/theckman/goconstraint v1.11.0"
	"github.com/ftrvxmtrx/fd c6d800382fff6dc1412f34269f71b7f83bd059ad"
	"github.com/go-toolsmith/typep v1.0.0"
	"github.com/golangci/unconvert 28b1c447d1f4a810737ee6ab40ea6c1d0ceae4ad"
	"sourcegraph.com/sqs/pbtypes v1.0.0 github.com/sqs/pbtypes"
	"sourcegraph.com/sourcegraph/go-diff v0.5.0 github.com/sourcegraph/go-diff"
	"github.com/nbutton23/zxcvbn-go v0.1"
	"github.com/pelletier/go-toml v1.2.0"
	"github.com/mitchellh/mapstructure v1.1.2"
	"github.com/golangci/revgrep 276a5c0a103935ee65af49afc254a65335bf1fcf"
	"github.com/hashicorp/hcl v1.0.0"
	"github.com/mitchellh/go-homedir v1.1.0"
	"github.com/BurntSushi/toml v0.3.1"
	"github.com/magiconair/properties v1.8.0"
	"github.com/mattn/go-colorable v0.0.9"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.2"
	"github.com/kisielk/gotool v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/OpenPeeDeeP/depguard 1f388ab2d81096755d25043aa729e2fb889f3dae"
	"golang.org/x/crypto a5d413f7728c81fb97d96a2b722368945f651e78 github.com/golang/crypto"
	"github.com/go-toolsmith/astcopy v1.0.0"
	"github.com/go-toolsmith/astcast v1.0.0"
	"github.com/go-lintpack/lintpack v0.5.2"
	"github.com/go-toolsmith/astfmt v1.0.0"
	"github.com/go-toolsmith/astequal v1.0.0"
	"github.com/go-toolsmith/astp v1.0.0"
	"github.com/go-toolsmith/strparse v1.0.0"
	"github.com/golangci/goconst 041c5f2b40f3dd334a4a6ee6a3f84ca3fc70680a"
	"github.com/golangci/check cfe4005ccda277a820149d44d6ededc400cc99a2"
	"github.com/gobwas/glob v0.2.3"
	"github.com/golang/mock v1.2.0"
	"github.com/davecgh/go-spew v1.1.0"
	"github.com/spf13/jwalterweatherman v1.1.0"
	"github.com/spf13/viper v1.3.2"
	"github.com/spf13/afero v1.2.2"
	"github.com/golangci/govet 44ddbe260190d79165f4150b828650780405d801"
	"github.com/golangci/gocyclo 0a533e8fa43d6605069e94f455bf9d79d4b8ea8c"
	"github.com/sirupsen/logrus v1.4.0"
	"github.com/golangci/dupl 3e9179ac440a0386ac7cc9a085fc44397c6b9bbc"
	"github.com/golangci/errcheck ef45e06d44b6e018d817c16c762d448990adc5e0"
	"github.com/golangci/go-misc 927a3d87b613e9f6f0fb7ef8bb8de8b83c30a5a2"
	"github.com/golangci/go-tools 35a9f45a5db090b0227d692d823151104cd695fa"
	"github.com/spf13/cast v1.3.0"
	"gopkg.in/yaml.v2 v2.2.2 github.com/go-yaml/yaml" 
	"mvdan.cc/interfacer c20040233aedb03da82d460eca6130fcd91c629a github.com/mvdan/interfacer"
	"github.com/fsnotify/fsnotify v1.4.7"
	"github.com/golangci/gofmt 0b8337e80d98f7eec18e4504a4557b34423fd039"
	"github.com/golangci/maligned b1d89398deca2fd3f8578e5a9551e819bd01ca5f"
	"mvdan.cc/lint adc824a0674b99099789b6188a058d485eaf61c0 github.com/mvdan/lint"
	"github.com/gogo/protobuf v1.2.1"
	"github.com/golangci/ineffassign 2ee8f2867dde308c46d401d6d30f6c644094b167"
	"github.com/golangci/misspell v0.3.4"
	"github.com/golangci/lint-1 d2cdd8c0821928c61cb0903441f8b35457a98a61"
	"github.com/golangci/prealloc 215b22d4de21190b80ce05e7d8466677c1aa3223"
	"mvdan.cc/unparam 1b9ccfa71afe53433971717161c9666adfc4d8c5 github.com/mvdan/unparam"
	"github.com/golangci/gosec 8afd9cbb6cfb34a3b4d4d5711bafdc6640ae892f"
	"github.com/go-critic/go-critic v0.3.4"
	"github.com/kr/logfmt b84e30acd515aadc4b783ad4ff83aff3299bdfe0"
)



# (21/97) Wrote github.com/lucasb-eyer/go-colorful@v1.0

inherit  golang-build golang-vcs-snapshot distutils-r1 systemd bash-completion-r1

DESCRIPTION="zrepl is a one-stop ZFS backup & replication solution"
HOMEPAGE="https://zrepl.github.io/"
SLOT="0"
LICENSE="MIT"
# go's dep tool requires network access
#RESTRICT="network-sandbox"
IUSE="doc systemd"
DISTUTILS_OPTIONAL=1
EGO_PN="github.com/zrepl/zrepl"


if [ $PV == "9999" ] ; then
	EGIT_REPO_URI="https://github.com/zrepl/zrepl.git"
	#EGIT_CHECKOUT_DIR=""	
	inherit git-r3
else
	KEYWORDS="~amd64"
	SRC_URI="https://github.com/zrepl/zrepl/archive/v${PV}.tar.gz -> ${P}.tar.gz ${EGO_VENDOR_URI}"
fi

# 	>=dev-go/dep-0.5.0
DEPEND=">=dev-lang/go-1.9
	<dev-lang/go-1.13
	dev-libs/protobuf
	dev-python/sphinx
	doc? ( >=dev-python/alabaster-0.7.11[${PYTHON_USEDEP}]
	>=dev-python/Babel-2.6.0[${PYTHON_USEDEP}]
	>=dev-python/certifi-2018.10.15[${PYTHON_USEDEP}]
	>=dev-python/chardet-3.0.4[${PYTHON_USEDEP}]
	>=dev-python/docutils-0.14[${PYTHON_USEDEP}]
	>=dev-python/idna-2.7[${PYTHON_USEDEP}]
	>=dev-python/imagesize-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/jinja-2.10[${PYTHON_USEDEP}]
	>=dev-python/markupsafe-1.0[${PYTHON_USEDEP}]
	>=dev-python/packaging-18.0[${PYTHON_USEDEP}]
	>=dev-python/pygments-2.2.0[${PYTHON_USEDEP}]
	>=dev-python/pyparsing-2.3.0[${PYTHON_USEDEP}]
	>=dev-python/pytz-2018.7[${PYTHON_USEDEP}]
	>=dev-python/requests-2.20.1[${PYTHON_USEDEP}]
	>=dev-python/six-1.11.0[${PYTHON_USEDEP}]
	>=dev-python/snowballstemmer-1.2.1[${PYTHON_USEDEP}]
	>=dev-python/sphinx-1.8.2[${PYTHON_USEDEP}]
	>=dev-python/sphinxcontrib-websupport-1.1.0[${PYTHON_USEDEP}]
	>=dev-python/urllib3-1.24.1[${PYTHON_USEDEP}] )"

src_prepare () {
#	eapply_user
#	S="$WORKDIR/src/github.com/$PN"
	#mkdir -p "$S" || die "Cannot mkdir $S"
	#mv "$WORKDIR/$P" "$S/$PN" || die "Cannot move $WORKDIR/$P to $S/$PN"
	#S="$S/$PN"
	#cd "$S"
	default
}

src_compile () {
	export GOPATH="$S"
	cd "$S/src/$EGO_PN"
	# dep ensure -v -vendor-only || die "Go dependencies failed"
	go build -o "$GOPATH/bin/stringer"      ./vendor/golang.org/x/tools/cmd/stringer || die "Cannot build stringer"
	go build -o "$GOPATH/bin/protoc-gen-go" ./vendor/github.com/golang/protobuf/protoc-gen-go  || die "Cannot build protoc-gen-go"
	go build -o "$GOPATH/bin/enumer"        ./vendor/github.com/alvaroloes/enumer || die "Cannot build enumer"
	go build -o "$GOPATH/bin/goimports"     ./vendor/golang.org/x/tools/cmd/goimports || die "Cannot build goimports"
	go build -o "$GOPATH/bin/golangci-lint" ./vendor/github.com/golangci/golangci-lint/cmd/golangci-lint || die "Cannot build golangci-lint"
	PATH="$GOPATH/bin:$PATH" emake -j1 release  ZREPL_VERSION="$PV" || die "Cannot build zrepl release"
	#use doc && PATH="$GOPATH/bin:$PATH" emake docs ZREPL_VERSION="$PV" || die "Cannot build zrepl docs"
}

src_install () {
	newbin "$S/src/$EGO_PN/artifacts/release/zrepl-linux-amd64" "zrepl"
	dodoc -r "$S/src/$EGO_PN/config/samples/"
	keepdir "/var/run/zrepl"
	fperms 750 "/var/run/zrepl"
	use doc && dodoc -r "$S/src/$EGO_PN/artifacts/docs/"
	use systemd && systemd_newunit "$S/src/$EGO_PN/dist/systemd/zrepl.service" zrepl.service
	newbashcomp "$S/src/$EGO_PN/artifacts/bash_completion" zrepl
}
