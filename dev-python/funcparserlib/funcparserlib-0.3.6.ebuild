# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit python distutils

DESCRIPTION="Recursive descent parsing library based on functional combinators"
HOMEPAGE="http://code.google.com/p/funcparserlib/"
SRC_URI="http://pypi.python.org/packages/source/${P:0:1}/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
