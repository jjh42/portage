# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /Users/jjh/Downloads/cvs/git/../repos/bif/portage/jhunt-ebuilds/kmasqdialer/kmasqdialer-2.05.ebuild,v 1.1 2002/11/17 02:51:53 jhuntnz Exp $

IUSE=""

inherit kde-base

DESCRIPTION="KMasqdialer - A KDE Client for MasqDialer"
SRC_URI=" http://www.stephan.co.uk/kmasqdialer/${P}.tar.gz"
HOMEPAGE="http://www.stephan.co.uk/kmasqdialer/download.html"


LICENSE="GPL-2"
KEYWORDS="x86"

need-kde 3
