# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19 ruby20"

RUBY_FAKEGEM_EXTRAINSTALL="data"

inherit ruby-fakegem

DESCRIPTION="A library which implements the client VNC protocol to control VNC servers."
HOMEPAGE="https://code.google.com/p/ruby-vnc/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
