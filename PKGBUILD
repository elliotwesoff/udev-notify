# Maintainer: Elliot Wesoff
pkgname=udev-notify
pkgver=1.0.0
pkgrel=1
pkgdesc="Monitor udev events and trigger system notifications on changes"
arch=('any')
url="https://codeberg.org/elliotwesoff/udev-notify"
license=('MIT')
depends=('libnotify' 'systemd')
source=(
  'udev-notify.sh'
  '50-usb.rules'
  'udev-notify.target'
  'udev-notify-blk.service'
  'udev-notify-usb.service'
)
sha256sums=(
  '9deb51f13d0b26369dcfa93967c30c0eba14ae0772db59a63ee1b648a711e7bd'
  '95efe4e5faa76d4e700960537d2bc152f3553ddf75e97ded00351e486af453d7'
  '3c37b23ce95c91ab301a4d1ae9e6c0ed24ac3e5b5526245100ba1fd21a1da896'
  '88d0b042ec55dd68c30918948954e34a5784f11526db383aee6c2b3b7c35c6d2'
  '140bbd47ae27ba4675d1c2f0d4e517f1ab3a49bfcba47cf90e5be916ab4178db'
)

package() {
  install -Dm755 "${srcdir}/udev-notify.sh" "${pkgdir}/usr/bin/udev-notify"
  install -Dm644 "${srcdir}/50-usb.rules" "${pkgdir}/etc/udev/rules.d/50-usb.rules"
  install -Dm644 "${srcdir}/udev-notify.target" "${pkgdir}/usr/lib/systemd/user/udev-notify.target"
  install -Dm644 "${srcdir}/udev-notify-usb.service" "${pkgdir}/usr/lib/systemd/user/udev-notify-usb.service"
  install -Dm644 "${srcdir}/udev-notify-blk.service" "${pkgdir}/usr/lib/systemd/user/udev-notify-blk.service"
}
