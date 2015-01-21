# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit python distutils

DESCRIPTION="Generate sequence-diagram image file from spec-text file"
HOMEPAGE="http://blockdiag.com/"
SRC_URI="https://bitbucket.org/blockdiag/${PN}/get/${PV}.tar.bz2 -> ${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="virtual/python-imaging
	>=app-office/blockdiag-1.5.0
	dev-python/webcolors
	dev-python/funcparserlib"
RDEPEND="${DEPEND}"

src_unpack() {
	unpack ${A}
	mv blockdiag-${PN}* ${P} || die
}
