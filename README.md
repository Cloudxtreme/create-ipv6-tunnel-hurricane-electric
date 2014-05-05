  **BTC donations**: `1DzPaoarz8pCV8wMg96hAGYgW2coJd798K`

# What does it do?
Partially-automates making an IPv6 tunnel for [passing](http://www.jacobsalmela.com/earning-the-ipv6-certification-from-hurricane-electric-on-mac-os-x/) the Hurricane Electric [IPv6 Certification](http://ipv6.he.net).  Instead of manually entering all the commands, you can just run the script passing the correct IP addresses as arguments.

[![IPv6 Sage](http://i.imgur.com/Z1rgdH0.png)](https://ipv6.he.net/certification/scoresheet.php?pass_name=jacobsalmela)

# Requirements

1. IPv6 tunnel created at [Tunnelbroker](http://tunnelbroker.net)
2. IPv6-compatible router (preferred)
3. Progressing through the IPv6 certification

## Usage
`sudo create-ipv6-tunnel.sh <local_IPv4_address> <server_IPv4_address> <client_IPv6_address> <server_IPv6_address>`

In the script, variables `$1`,`$2`,`$3`, and `$4` correlate to the following addresses from the Tunnelbroker site.
![variable assignments](http://i.imgur.com/T06dGnt.png)



