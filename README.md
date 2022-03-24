# 105_SRE_Cloud_Computing_AWS
## SRE INTRO
### User Journey
#### User Experience
##### AWS Services

- What is an SRE?

A site Reliability Engineer is in charge of making sure that the product(site) is constantly up, running and available for users as well as making sure users have a satisfactory experience.

## Benefits of Cloud Computing

cloud computing is the delivery of computing services—including servers, storage, databases, networking, software, analytics, and intelligence—over the Internet (“the cloud”) to offer faster innovation, flexible resources, and economies of scale.

- Ease of use

With the cloud, you can expand to new geographic regions and deploy globally in minutes
  
- Flexibility 

The cloud gives you easy access to a broad range of technologies so that you can innovate faster and build nearly anything that you can imagine. You can quickly spin up resources as you need them–from infrastructure services, such as compute, storage, and databases, to Internet of Things, machine learning, data lakes and analytics, and much more.

- Robustness

With cloud computing, you don’t have to over-provision resources up front to handle peak levels of business activity in the future. Instead, you provision the amount of resources that you actually need. You can scale these resources up or down to instantly grow and shrink capacity as your business needs change.
  
- Cost
  
The cloud allows you to trade capital expenses (such as data centers and physical servers) for variable expenses, and only pay for IT as you consume it. Plus, the variable expenses are much lower than what you would pay to do it yourself because of the economies of scale. 

## Amazon Web Services(AWS)

Amazon Web Services (AWS) is a subsidiary of Amazon providing on-demand cloud computing platforms and APIs to individuals, companies, and governments, on a metered pay-as-you-go basis. These cloud computing web services provide a variety of basic abstract technical infrastructure and distributed computing building blocks and tools.

![AWS](https://s3-us-west-1.amazonaws.com/corpinfowebsiteuploads/content/uploads/2016/04/25051531/AWS-Global-Infrastructure.jpg)


## REGION VS AVAILABILITY ZONE

- Region is a physical location around the world where we cluster data centers. We call each group of logical data centers an Availability Zone. Each AWS Region consists of multiple, isolated, and physically separate AZs within a geographic area. 

- AZs give customers the ability to operate production applications and databases that are more highly available, fault tolerant, and scalable than would be possible from a single data center.

## FOUR PILLARS

- Fault Tolerance
- High Availability
- Scalability
- Elasticity

## More than one availability zone?

- For backup purposes. The minute one availability zone doesnt work/is not 200k we need to stop the traffic and redirect it to the second avalible zone.

## What is CND

Content delivery Network

- A content delivery network (CDN) refers to a geographically distributed group of servers which work together to provide fast delivery of Internet content.

- A CDN allows for the quick transfer of assets needed for loading Internet content including HTML pages, javascript files, stylesheets, images, and videos.
  
- Improve security with traffic encryption and access controls, and use AWS Shield Standard to defend against DDoS attacks at no additional charge.
  
- Customize the code you run at the AWS content delivery network (CDN) edge using serverless compute features to balance cost, performance, and security.

- Cut costs with consolidated requests, customizable pricing options, and zero fees for data transfer out from AWS origins
  
- Reduce latency by delivering data through 310+ globally dispersed Points of Presence (PoPs) with automated network mapping and intelligent routing.

## ON PREM VS HYBRID - ON PREM VS PUBLIC CLOUD

### On prem VS Hybrid VS Public Cloud

- On prem
  - storing all the data of the organisation on the premises of the organisation, in other words running an internal server maintained by the organisation itself
  
- Public Cloud
  - a server on the web that stores all of the companies data, which is fully maintained by a different organisation
  - For example, using AWS, the server space is used by the individual company, but the maintanance is done by Amazon
- Hybryd
  - storing some of the information within the internal organisation server, and some on a public server like AWS
  - For example, a bank might keep your card information within the banks internal server, but keep a credit application form on a public server

###  hybrid cloud

A hybrid cloud is a type of cloud computing that combines on-premises infrastructure—or a private cloud—with a public cloud. Hybrid clouds allow data and apps to move between the two environments.

#### benefits

A hybrid cloud platform gives organisations many advantages—such as greater flexibility, more deployment options, security, compliance, and getting more value from their existing infrastructure. When computing and processing demand fluctuates, hybrid cloud computing gives businesses the ability to seamlessly scale up their on-premises infrastructure to the public cloud to handle any overflow—without giving third-party datacentres access to the entirety of their data.

# AWS -> localhost and back
- Our desktop or laptop has set hardware and software on it
- AWS doesn't, so we need to specify the size we want it to have
- need credentials (username, password, AWS keys) to have access

### Diagram

![Diagram](https://user-images.githubusercontent.com/34945430/159462791-8d14998a-e95c-41e0-b9bd-c87ecab7d42f.png)

## or

![Diagram](https://user-images.githubusercontent.com/87706066/159463394-5b656e36-fe85-4ebb-9a08-2134562cbcb6.png)

# Making an AWS Version 1

## Making an AWS

- pem file contains the security key. When a request is sent from local host, this key is used to see if you are authorised.

### How to launch an instance

- log into the aws website
- create new e2 instance
- select ubuntu 18
- create your security group
- create one for ssh which will be for you or devs and create one for everyone.
- connect to instance through ssh client
- make sure you are on the same working directory as 105.perm
- copy the ssh key
  
# Making an AWS Version 2

### How to connect to remote VM: ###

1. put the SSH key into your .ssh folder (C/users/username/.ssh)
2. In AWS Select EC2
3. Create a new instance (in this case ubuntu v 18.04)
4. add a name
5. add security groups:
    - make sure to restrict access in SSH selecting proper port
    - allow access to vm through HTTP
6. Launch and connect following the instructions from
AWS

7. **Remember to stop the instance when not using the vm through the AWS website** 
(some steps may need clarification)
---
### Inside the VM ##

1. Run: sudo apt-get update -y
2. run: sudo apt-get upgrade -y
3. run: sudo apt-get install nginx -y
4. Check that it was installed sucessfully through checking the public IP


## Linux Command
-  after executing sudo systemctl  `ctrl+c`
- How to start a service `sudo systemctl status name_service`
- retarting a service: `sudo(admin user) systemctl start name_service`
- stoping a service: `systemctl status stop name_service`
- enable service  `sudo systemctl enable name_service`
- how to install a package `sudo apt-get install package_name -y`
- how to remove a package `sudo apt-get remove package_name -y`
- how to check all process `top`
- who am I `pwd`
- create dir `mkdir dir_name`
- how to check `ls` or `ls-a`
- how to create a file `touch name_file` (only creates) or `nano file_name` (creates a file and adds something to it)
- how to check content of the file without going inside the file `cat file_name`
- How to move a file to another location `mv file_name directory_name`
- how to delete a folder(by force) `sudo rm -rf forder_name`


### File Permission

-how to check a file permission `ll`(double l)
-change file permision `chmod required_permision file_name`
- `sudo chmod +x provision.sh`
- write `w` read `r` exe `x`
- https://chmod-calculator.com/


### Bash scripting - Automate process with the script

- code block
```bash
# it must be in #!/bin/bash

#run updates
sudo apt-get update -y

#upgrade
sudo apt-get upgrade -y
#install 
sudo apt-get install nginx -y

#start nginx
sudo systemctl start nginx


#enable service
sudo systemctl enable nginx
```

### tomcat
```bash
# it must be in #!/bin/bash

#search version
sudo apt-cache search tomcat

#run updates
sudo apt-get update -y

#upgrade
sudo apt-get upgrade -y


#install 
sudo apt-get install tomcat9 tomcat9-admin

#start service
sudo systemctl start tomcat9

#enable service
sudo systemctl enable tomcat9

#specify port
sudo ufw allow from any port 8080 proto tcp

#add new rule

#edit inbound rules

http://3.250.77.102:8080/

```
![](https://user-images.githubusercontent.com/53493950/159737926-41a4e512-2fa8-4beb-b263-2916c5db48d3.PNG)


- change the file to exe `chmod +x provision.sh`
- how to run an exe file `./provision.sh`

### what is a VPC?
- A VPC is a public cloud offering that lets an enterprise establish its own private cloud-like computing environment on shared public cloud infrastructure. 
- A VPC gives an enterprise the ability to define and control a virtual network that is logically isolated from all other public cloud tenants, creating a private, secure place on the public cloud.
  
https://www.ibm.com/cloud/learn/vpc


<br/>


![Diagram](https://user-images.githubusercontent.com/53493950/159765272-98e7832a-abd5-4dbf-870f-1d817b2abdf9.png)

<br />
<br />


### what is Internet gateway?

- An Internet gateway is a network "node" that connects two different networks that use different protocols (rules) for communicating.
- In the most basic terms, an Internet gateway is where data stops on its way to or from other networks. Thanks to gateways, we can communicate and send data back and forth with each other.
  
https://www.whatismypublicip.com/blog/what-is-an-internet-gateway/

<br />

### What is a subnet?

- A subnet, or subnetwork, is a network inside a network. Subnets make networks more efficient. 
- Through subnetting, network traffic can travel a shorter distance without passing through unnecessary routers to reach its destination.
  
<br />

![SUBNET](https://user-images.githubusercontent.com/53493950/159752842-5a40d813-8c9a-4daa-9189-02d8cfb27503.PNG)



<br />

### What is Nacls?

- NACL refers to Network Access Control List, which helps provide a layer of security to the Amazon Web Services stack.  

- NACL helps in providing a firewall thereby helping secure the VPCs and subnets. 

- It helps provide a security layer which controls and efficiently manages the traffic that moves around in the subnets.

- It is an optional layer for VPC, which adds another security layer to the Amazon service. 

- VPC refers to Virtual private Cloud, which can be visualized as a container that stores subnets. 

- Subnets can be considered as a container, which helps store data.  


#### links Nacls

<br />

![SG](https://user-images.githubusercontent.com/53493950/159757655-25395353-aaed-4d3b-8552-5a390d65a665.PNG)

<br />

<br />

https://www.knowledgehut.com/tutorials/aws/aws-nacl

https://www.awsboy.com/aws-security-groups-vs-nacls/

<br />

<br />



<br />

### What is Security group?

- A security group acts as a virtual firewall, controlling the traffic that is allowed to reach and leave the resources that it is associated with. 
- For example, after you associate a security group with an EC2 instance, it controls the inbound and outbound traffic for the instance.
- Control traffic to resources using security groups
  
<br />

![SG](https://user-images.githubusercontent.com/53493950/159757655-25395353-aaed-4d3b-8552-5a390d65a665.PNG)

<br />

## how did you secure your app on the public cloud?

### Cover your basics first
- Authorization
- Auditing and logging
- Confidentiality 
- Integrity
### Three security approaches you need for public cloud
1.  Focus on the data
- - The platform level
- - The database level
- - The application level
2.   It’s all about identity

- Use identity and access management (IAM) technology to initiate, capture, record, and manage user identities and related access permissions. 
- IAM ensures that access privileges are granted according to policy set by both the developers and security administrators.
3.  Move from DevOps to DevSecOps
   - You need to focus more on DevSecOps, or development security operations, where you deal with testing security within the DevOps processes. 
   - DevSecOps => You must constantly check applications for the proper use of IAM services, encryption, and other security processes that should be built into the application and make sure they're all functioning correctly.
   - Public cloud best practice: Oversecure your apps
   
<br />

### What are the outbound rules for security groups by default? and why?
- The default is to allow all outbound traffic to leave 
- Server doesn't limit who is requesting the resource and what port they are on
### What is the command to kill a process in linux?
- Using Process Name: `killall proccess`
- Using Process ID: `kill processID`
- Unresponsive Process: `kill -9 processID`

<br />

![vpc analogy](https://user-images.githubusercontent.com/53493950/159765434-add64d0b-e4b5-4eac-a583-819a59a6d62f.png)

<br />

### Monolith -N-tier - 2-tier & Microservices

-------------------------
# So what does DevOps actually mean?

- In a nutshell — DevOps is a culture that bridges the gap 
between development and IT operation teams

Pipeline? using Docker? and Jenkins?.

Docker?

virtualization platform to containerise your app

WHO USES? Top companies like ING, Paypal, ADP, and Spotify 

Continuous Integration Efficiency with Docker enables you to build a container image

BENEFITS?

separate non-dependent steps and run them in parallel

CI — Continuous Integration and CD — Continuous Delivery and Deployment

CI CD is considered as the backbone of DevOps practices and automation

releasing software in minutes

Advantages?

fault isolation is simpler and easier

# INTERVIEW PREP

- Passion
- Excietment
- Achievment

### Extra Notes
- Scrum the framework that is used to implement Agile methodology
if the person taking notes stops taking notes, what you might say might not be important anymore

- Where do you see yourself in the future? talk about how are you planning to get there. Break it down in steps

- if you do not know how to respond to a interview question, then start with "My understanding of this is..."
  
## Finishing an important question

- Does that answer your question? would like me to go into more detail

  