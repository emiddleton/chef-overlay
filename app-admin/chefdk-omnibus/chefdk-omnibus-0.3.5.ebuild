# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

DESCRIPTION="Omnibus installation of ChefDK"
HOMEPAGE="http://www.opscode.com/chefdk/install/"
SRC_URI="http://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_${PV}-1_amd64.deb"

LICENSE="Apache"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_unpack() {
	unpack ${A} ./data.tar.gz
}

src_install() {
	local dest="${D}/opt"
	mkdir -p "$dest"

	cp -pR ./opt/* "$dest"

	# workaround for broken gentoo environment setting
	touch "$dest/chefdk/embedded/lib/ruby/site_ruby/2.1.0/auto_gem.rb"

	dosym "$dest/chefdk/bin/berks"       /usr/bin/berks       || die
	dosym "$dest/chefdk/bin/kitchen"     /usr/bin/kitchen     || die
	dosym "$dest/chefdk/bin/chef"        /usr/bin/chef        || die
	dosym "$dest/chefdk/bin/chef-client" /usr/bin/chef-client || die
	dosym "$dest/chefdk/bin/foodcritic"  /usr/bin/foodcritic  || die
	dosym "$dest/chefdk/bin/chef-apply"  /usr/bin/chef-apply  || die
	dosym "$dest/chefdk/bin/knife"       /usr/bin/knife       || die
	dosym "$dest/chefdk/bin/ohai"        /usr/bin/ohai        || die
	dosym "$dest/chefdk/bin/chef-solo"   /usr/bin/chef-solo   || die
	dosym "$dest/chefdk/bin/chef-vault"  /usr/bin/chef-vault  || die
	dosym "$dest/chefdk/bin/chef-shell"  /usr/bin/chef-shell  || die
}
