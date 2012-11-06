
Overview
--------

This charm provides kibana from (service homepage). Add a description here of what the service itself actually does. 

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

    browse to http://ip-address:5601 to begin searching.

Configuration
-------------

nothing much special here.


Contact Information
-------------------


Author: Paul Czarkowski <paul@paulcz.net>
Report bugs at: http://bugs.launchpad.net/charms
Location: http://jujucharms.com
