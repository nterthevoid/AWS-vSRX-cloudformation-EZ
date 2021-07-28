This repo is used for Cloudformation templates.  You can either download the CFT file here and upload them into AWS Cloud Formation Stacks or just link the url.

vSRX.CFT
Is a single Juniper Networks vSRX CFT.  For AWS, the region (East-1), VPC, ENI's, Addressing, subnets, security groups, route tables and Internet Gateway have all been pre-configured within the CFT.  For Juniper vSRX specifics, 4 network interface, addresses, zones, Revenue and management ports,  and most importantly NAT.  Nat is configured for anything in the trust zone to untrust.  This is all done by way of cloud_init statements in the CFT. ssh -i yourkey ec2-user@vSRXAWSpubIP


vSRX.plus.Deb.CFT
This CFT is a single CFT that adds a debian linux host on trusted side of the vSRX. The debian host is added to the AWS security groups and is also part of the vSRX trusted zone.  All addressing is configured for the debian host in addition to default gateway to force traffic through the vSRX.  The Debain host can be accessed via a static NAT 2223 through the vSRX. Very similar in how you might open ports for a web server behind a firewall.  This can be used as a simple starting template for an edge design.
ssh -i yourkey admin@vSRXAWSpubIP -p 2223


Mark Snyder
Security Solutions Architect
msnyder@juniper.net
