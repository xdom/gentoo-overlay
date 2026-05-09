# xdom's Gentoo overlay

## Enable overlay

```sh
eselect repository add xdom git https://github.com/xdom/gentoo-overlay.git
```

## Configure profile

```sh
ln -sf /var/db/repos/xdom/profiles/desktop /etc/portage/make.profile
```
