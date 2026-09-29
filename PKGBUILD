# Maintainer: Elliot Wesoff
pkgname=udev-notify
pkgver=1.0.0
pkgrel=2
pkgdesc="Monitor udev events and trigger system notifications on changes"
arch=('any')
url="https://codeberg.org/elliotwesoff/udev-notify"
license=('MIT')
depends=('libnotify' 'systemd')
source=(
  'udev-notify.sh'
  '50-usb.rules'
  'udev-notify.service'
  'udev-notify-blk.service'
  'udev-notify-usb.service'
)
sha256sums=(
  '9deb51f13d0b26369dcfa93967c30c0eba14ae0772db59a63ee1b648a711e7bd'
  '95efe4e5faa76d4e700960537d2bc152f3553ddf75e97ded00351e486af453d7'
  'd0c15c880ece036cf0bb63105caca4dd143e327359f7f6298cfc60c8dedd0876'
  '4f72a7b7440b86514630a3799f031347e4a1f080240496386a28fa0852bd8725'
  '3f015be9aa10918ae0baf1aeb2d3415c581bd3711b12a11070b18581fad85ddb'
)

package() {
  install -Dm755 "${srcdir}/udev-notify.sh" "${pkgdir}/usr/bin/udev-notify"
  install -Dm644 "${srcdir}/50-usb.rules" "${pkgdir}/etc/udev/rules.d/50-usb.rules"
  install -Dm644 "${srcdir}/udev-notify.service" "${pkgdir}/usr/lib/systemd/user/udev-notify.service"
  install -Dm644 "${srcdir}/udev-notify-usb.service" "${pkgdir}/usr/lib/systemd/user/udev-notify-usb.service"
  install -Dm644 "${srcdir}/udev-notify-blk.service" "${pkgdir}/usr/lib/systemd/user/udev-notify-blk.service"
}
