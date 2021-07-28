This repo is used for Cloudformation templates.  You can either download the CFT file here and upload them into AWS Cloud Formation Stacks or just link the url.

vSRX.CFT
Is a single Juniper Networks vSRX CFT.  For AWS, the region (East-1), VPC, ENI's, Addressing, subnets, security groups, route tables and Internet Gateway have all been pre-configured within the CFT.  For Juniper vSRX specifics, 4 network interface, addresses, zones, Revenue and management ports,  and most importantly NAT.  Nat is configured for anything in the trust zone to untrust.  This is all done by way of cloud_init statements in the CFT. 


Mark Snyder
Security Solutions Architect
msnyder@juniper.net
