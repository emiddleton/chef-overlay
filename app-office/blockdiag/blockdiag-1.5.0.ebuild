# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit python distutils

DESCRIPTION="Simple block diagram generator"
HOMEPAGE="http://blockdiag.com/"
SRC_URI="https://bitbucket.org/blockdiag/${PN}/get/${PV}.tar.bz2 -> ${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="virtual/python-imaging
	dev-python/webcolors
	dev-python/funcparserlib"
RDEPEND="${DEPEND}"

src_unpack() {
	unpack ${A}
	mv ${PN}* ${P} || die
}
