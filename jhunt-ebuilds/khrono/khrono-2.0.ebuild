# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /Users/jjh/Downloads/cvs/git/../repos/bif/portage/jhunt-ebuilds/khrono/khrono-2.0.ebuild,v 1.1 2002/11/06 05:09:30 jhuntnz Exp $

IUSE=""

inherit kde-base

DESCRIPTION="Khrono - A KDE Stopwatch"
SRC_URI=" http://ftp.sourceforge.net/khrono/${P}.tar.gz"
HOMEPAGE="http://khrono.sourceforge.net/"


LICENSE="GPL-2"
KEYWORDS="x86"

need-kde 2
