# Maintainer: Elliot Wesoff
pkgname=udev-notify
pkgver=1.0.0
pkgrel=1
pkgdesc="Monitor udev events and trigger system notifications on changes"
arch=('any')
# url="https://github.com/yourusername/my-custom-tools"
license=('MIT')
depends=('libnotify' 'systemd')
source=(
  "udev-notify.sh"
  "udev-notify.service"
  "udev-notify.timer"
)
# Update these checksums using `updpkgsums` or `sha256sum`
sha256sums=(
  '95efe4e5faa76d4e700960537d2bc152f3553ddf75e97ded00351e486af453d7'
  '3a5c9d325c7fb78302cabd972c51513c419920669cee008968b1ddb706a6e8fa'
  '4f72a7b7440b86514630a3799f031347e4a1f080240496386a28fa0852bd8725'
  '3f015be9aa10918ae0baf1aeb2d3415c581bd3711b12a11070b18581fad85ddb'
  '9deb51f13d0b26369dcfa93967c30c0eba14ae0772db59a63ee1b648a711e7bd'
)

package() {
  install -Dm755 "\({srcdir}/udev-notify.sh" "\){pkgdir}/usr/bin/udev-notify"
  install -Dm644 "\({srcdir}/udev-notify.service" "\){pkgdir}/usr/lib/systemd/user/udev-notify.service"
  install -Dm644 "\({srcdir}/udev-notify-usb.service" "\){pkgdir}/usr/lib/systemd/user/udev-notify-usb.service"
  install -Dm644 "\({srcdir}/udev-notify-blk.service" "\){pkgdir}/usr/lib/systemd/user/udev-notify-blk.service"
}
