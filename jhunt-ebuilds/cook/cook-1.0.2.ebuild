# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /Users/jjh/Downloads/cvs/git/../repos/bif/portage/jhunt-ebuilds/cook/cook-1.0.2.ebuild,v 1.1 2002/10/30 06:14:16 jhuntnz Exp $

# Short one-line description of this package.
DESCRIPTION="Cooks is another preprocessor"


HOMEPAGE="http://cook.sourceforge.net/"

SRC_URI="http://unc.dl.sourceforge.net/sourceforge/cook/${P}.tar.gz"

LICENSE=""

SLOT="0"

KEYWORDS="x86"

IUSE=""

DEPEND=""

S="${WORKDIR}/${P}"

src_compile() {
	cd src
	make || die
}

src_install() {
    install -d ${D}/usr/bin
    install src/cook ${D}usr/bin 
}
