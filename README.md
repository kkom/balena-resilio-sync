# Resin Resilio Sync

A resin.io application to run Resilio Sync on your ARMv8-based device (i.e. Raspberry Pi 3, unfortunately not Raspberry Pi Zero).

All of Resilio Sync config and data is stored on the external drive, making it fully portable. I.e. you can easily switch it between different devices, or factory reset them without losing any configuration or data.

## Requirements

1. Resin.io account (free)
2. ARMv8-based device (I recommend Raspberry Pi 3 Model B+ because of its fast WiFi)
3. External USB drive

## How to use it

1. Get an external USB drive, format it as exFAT and name it `resilio-db`. Plug it into the device.
2. Create a resin.io application following [the resin.io tutorial](https://docs.resin.io/learn/getting-started/). Instead of cloning the resin.io repo, clone `https://gitlab.com/komorowskik/resin-resilio-sync.git`.
3. Find your device in the dashboard and tick the "public device URL" option. Follow the link to access the Resilio Sync web configuration.
4. If your device does not have a public IP address, it's a good idea to forward to it the listening port (default is 55555) - it will make it accessible to peers without a public IP address.
5. Profit!
