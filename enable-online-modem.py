#!/usr/bin/python3

import dbus

bus = dbus.SystemBus()

manager = dbus.Interface(bus.get_object('org.ofono', '/'),
                'org.ofono.Manager')
modems = manager.GetModems()
path = modems[0][0]

print("Connecting modem %s..." % path)
modem = dbus.Interface(bus.get_object('org.ofono', path),
            'org.ofono.Modem')

modem.SetProperty("Powered", dbus.Boolean(1), timeout = 120)
print("Setting modem %s online..." % path)
modem.SetProperty("Online", dbus.Boolean(1), timeout = 120)
