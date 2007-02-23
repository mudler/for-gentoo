# Copyright 2007 Sabayon Linux
# Distributed under the terms of the GNU General Public License v2

DESCRIPTION="Virtual Machine Manager GUI"
HOMEPAGE="http://virt-manager.et.redhat.com/index.html"
SRC_URI="http://virt-manager.et.redhat.com/download/sources/${PN}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	>=app-emulation/libvirt-0.2.0
	>=dev-python/dbus-python-0.61
	>=gnome-base/gconf-2.8
	>=x11-libs/vte-0.12
	>=dev-python/gnome-python-2.15.4
	>=dev-python/pygtk-2.0
	dev-libs/libxml2
	dev-lang/python
	>=app-emulation/virtinst-0.100
	"

src_install() {
	make DESTDIR=${D} install || die
}
