# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="A tool for creating machine images"
HOMEPAGE="http://www.packer.io"
SRC_URI=""

EGIT_REPO_URI="git://github.com/mitchellh/packer.git"
EGIT_COMMIT="v${PV}"

inherit git-2 eutils

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-lang/go-1.2
	dev-vcs/bzr
	dev-vcs/git
	dev-vcs/mercurial
"
RDEPEND="${DEPEND}"

EGIT_SOURCEDIR="${WORKDIR}/gopath/src/github.com/mitchellh/packer"
S="${EGIT_SOURCEDIR}"

src_unpack() {
	git-2_src_unpack
}

src_prepare() {
	export GOPATH="${WORKDIR}/gopath"
	export PATH="${GOPATH}/bin:${PATH}"
	go get github.com/mitchellh/gox || die
	make updatedeps
	cd ${GOPATH}/src/golang.org/x/oauth2 || die
	git checkout b3f9a68f05ff3f8b323cd6917f1f237cdbc6edaa
	go get google.golang.org/appengine
	cd ${GOPATH}/src/google.golang.org/appengine || die
	git checkout c98f627282072b1230c8795abe98e2914c8a1de9
	cd ${GOPATH}/src/github.com/hashicorp/atlas-go || die
	git checkout 072814b5d05e34466c6c0fdd62cdecf184dc3521
}

src_compile() {
	emake bin || die
}

src_install() {
	dobin "${GOPATH}"/bin/packer*
}

