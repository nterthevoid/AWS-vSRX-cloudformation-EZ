This repo is used for Cloudformation templates.

vSRX.CFT.json  (WIP)
Is a single Juniper Networks vSRX CFT.  For AWS, the region (East-1), VPC, ENI's, Addressing, subnets, security groups, route tables and Internet Gateway have all been pre-configured within the CFT.  For Juniper vSRX specifics, 4 network interface, addresses, zones, Revenue and management ports,  and most importantly NAT.  Nat is configured for anything in the trust zone to untrust.  This is all done by way of cloud_init statements in the CFT. ssh -i yourkey ec2-user@vSRXAWSpubIP


vSRX.plus.Deb.CFT.json
This CFT is a single CFT that adds a debian linux host on trusted side of the vSRX. The debian host is added to the AWS security groups and is also part of the vSRX trusted zone.  All addressing is configured for the debian host in addition to default gateway to force traffic through the vSRX.  The Debain host can be accessed via a static NAT 2223 through the vSRX. Very similar in how you might open ports for a web server behind a firewall.  This can be used as a simple starting template for an edge design.
ssh -i yourkey admin@vSRXAWSpubIP -p 2223




Usage Notes
The vSRX does not support hot add/swap network cards.  In the CFT's here I am adding the cards after the fact.... So, a shutdown and start is required of the vSRX to be able to recognize the network card.  Use the AWS EC3 instance to shutdown and start rather than the vSRX CLI.  You can use restart from the AWS console, however, the instance state shows as running when in fact the srx is still booting and not ready yet.  Shutting down and starting gives a better visual when its really up...

Juniper deployment guide for vSRX in AWS.
https://www.juniper.net/documentation/us/en/software/vsrx/vsrx-consolidated-deployment-guide/vsrx-aws/topics/task/security-vsrx-aws-vpc-configuring.html


Files   vpn-config-71H725  and   vpn-config-87E960
vpn-config-...   are working site to site vpn configurations using two vSRXs in AWS. Where each SRX is terminating the IPSEC tunnel.   Moreover, these configs also use source and static NAT to allow hosts behind the SRX access out to the interent.  Moreover, the static NAT is an example were the hosts behind each firewall have the same (overlapping) private addresses.  Static NAT is used for bidirectional translation between the two sets of hosts on each side of the vpn.


Mark Snyder
Security Solutions Architect
msnyder@juniper.net
