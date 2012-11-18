
Overview
--------

This charm provides kibana from (http://kibana.org/). 
Kibana is a search frontend for logstash.

Usage
-----

 instructions on using the charm:
    juju deploy kibana
    juju expose kibana
 not much use on its own ... you'll probably want the full stack
    juju deploy elasticsearch
    juju deploy logstash-indexer
    juju add-relation logstash-indexer elasticsearch:cluster
    juju deploy kibana
    juju add-relation kibana elasticsearch:rest
    juju expose kibana

    browse to http://ip-address to begin searching.

Configuration
-------------

listens only on localhost:5601.   uses rinetd to redirect ip-addr:80 to localhost:5601.
This should allow for haproxy etc to be used in front.
Could configure apache reverse proxy in front if you want SSL / .htaccess

Other
-----

* supports multiple ES servers in cluster.  This should help with balancing the load on ES and dealing with failure.

* see logstash-indexer charm's README.md file for usage examples.

Contact Information
-------------------


Author: Paul Czarkowski <paul@paulcz.net>
Report bugs at: http://bugs.launchpad.net/charms
Location: http://jujucharms.com
