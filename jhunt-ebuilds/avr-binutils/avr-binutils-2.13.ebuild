# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /Users/jjh/Downloads/cvs/git/../repos/bif/portage/jhunt-ebuilds/avr-binutils/avr-binutils-2.13.ebuild,v 1.1 2002/10/30 06:14:16 jhuntnz Exp $

DESCRIPTION="The GNU binutils for the AVR microcontroller architecture"

# Homepage, not used by Portage directly but handy for developer reference

HOMEPAGE="http://sources.redhat.com/binutils"


S="${WORKDIR}/binutils-2.13"

A="binutils-2.13.tar.gz"

SRC_URI="http://ftp.gnu.org/gnu/binutils/${A}"

LICENSE="GPL-2"

SLOT="0"

KEYWORDS="x86"


# Build-time dependencies, such as
#    ssl? ( >=openssl-0.9.6b )
#    >=perl-5.6.1-r1
# It is advisable to use the >= syntax show above, to reflect what you
# had installed on your system when you tested the package.  Then
# other users hopefully won't be caught without the right version of
# a dependency.
DEPEND="virtual/glibc"

# Run-time dependencies, same as DEPEND if RDEPEND isn't defined:
#RDEPEND=""

src_compile() {
	pwd
	./configure \
		--host=${CHOST} \
		--target=avr \
		--prefix=/usr \
		--infodir=/usr/share/info \
		--mandir=/usr/share/man || die "./configure failed"

	emake || die
}

src_install() {
       make prefix=${D}/usr \
           mandir=${D}/usr/share/man \
           infodir=${D}/usr/share/info \
           install || die
						       
}
