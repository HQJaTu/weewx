# Upgrade DEB

If you have specified the WeeWX apt repository in
`/etc/apt/sources.list.d/weewx.list`, then upgrade to the latest version
like this:

```
sudo apt update
sudo apt install weewx
```

Otherwise, download the latest X.Y.Z DEB package from the
<a href="https://weewx.com/downloads/">WeeWX downloads</a>, then
upgrade like this:

```
sudo apt install ./python3-weewx_X.Y.Z-R_all.deb
```

The upgrade process will not modify the WeeWX databases.

Unmodified files will be upgraded. If modifications have been made to the
WeeWX configuration, you will be prompted as to whether you want to keep the
existing configuration or accept the new configuration. Either way, a copy of
the option you did not choose will be saved.

For example, if `/etc/weewx/weewx.conf` was modified, you will see a message
something like this:

```
Configuration file `/etc/weewx/weewx.conf'
  ==&gt; Modified (by you or by a script) since installation.
  ==&gt; Package distributor has shipped an updated version.
  What would you like to do about it ?  Your options are:
            Y or I  : install the package maintainer's version
            N or O  : keep your currently-installed version
              D     : show the differences between the versions
              Z     : start a shell to examine the situation
         The default action is to keep your current version.
*** weewx.conf (Y/I/N/O/D/Z) [default=N] ?
```

Choosing `Y` or `I` (install the new version) will place your old
configuration in `/etc/weewx/weewx.conf.dpkg-old`, where it can be
compared with the new version in `/etc/weewx/weewx.conf`.

Choosing `N` or `O` (keep the current version) will place the new
configuration in `/etc/weewx/weewx.conf.X.Y.Z`, where `X.Y.Z` is the
new version number. It can then be compared with your old version which
will be in `/etc/weewx/weewx.conf`.

!!! Note
    In most cases you will want to choose `N` (the default).