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
- how to delete a folder(by force) `sudo rm -rf forder_name
- `
  25/03/22
- alias python=python3
-  python3 -m pip install awscli
-  aws configure
-  aws s3 ls
-  aws s3 mb s3://105-sre-oscar "//make directory i
-  aws s3 cp test.txt s3://105-sre-oscar  "copy file to bucket s
-  aws s3 sync s3://105-sre-oscar . "download file from whole s3 bucket
-  aws s3 cp s3://105-sre-oscar .  "download file from s3

sudo aws s3 rm s3://105-sre-oscar delete file first
sudo aws rb s3://105-sre-oscar  "delete bucket

 sudo aws s3 rm s3://105-sre-oscar/test.txt  "remove file

 sudo aws s3 rb s3://105-sre-oscar  "remove bucket







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

# Monolith -N-tier - 2-tier & Microservices

- Do not use Monolith on bussiness that you have to scale up. Instead adopt cloud and microservices

- Microservices architectures are more expensive and harder to manage and mantain

### When to use microservices?

- When scaling up

### When not to use microservices?

- if the product is small do not use microdervices
  
#### Scale up?

- moving upwards
- increase the volume in the specs when the size of the instance is too big for the current one.
- Increase the size of the server if size of all data in the server increases

#### Scale out?

- moving sideways
- scaling sideways when the number of users increases
- If the traffic increases (users) scale out or in. Meaning adding more servers to handle traffic.

<br />

https://opsani.com/blog/scale-up-vs-scale-out-whats-the-difference/


### Monolith

- a monolithic is built on a single unit.
 - there are three major parts
 - a client UI
 - a server-side application
 - a database
 - simple but has limitations
 - heavy apps can slow down the start up time
 - need to redeploy everytime there is a update
 - challenging to upscale
 - useful for simple and lightweight apps

<br />

![monpvsmicro](https://user-images.githubusercontent.com/53493950/159965492-87dd5471-e6c3-454f-924f-95c464e3a40f.png)


<br />

### -N-tier

- The program is distributed amongst 3 or more computers in a distributed network.
- UI, business logic and databases are seperate

<br />

![ntier](https://user-images.githubusercontent.com/53493950/159956369-b3a6e9f9-c698-4029-ab13-8e5b4bfd2808.png)

<br />


### 2-tier

- there is no business logic layer between the client and the server
- the UI layer runs on the client side while dataset layer gets executed and stored on server side.

<br />

![2tier](https://user-images.githubusercontent.com/53493950/159965976-8862f6a9-d5d3-4528-b1f4-04fd8211dcba.jpg)

<br />

### Microservices

- everything is a service on a micro level
- allows business to scale up and add new features
- new services does not effect the old services
- each service/feature can be test independently
- the database is not on the front end
- expensive

<br />

![2tier](https://user-images.githubusercontent.com/53493950/159967560-943cda84-a0eb-42b0-a58c-d6ab1e741e29.PNG)

<br />




### SDLC
- stands for software development lifecycle
- the process of end to end product development

###### The stages are:
- Planning: Just an idea, only in someones head
- Designing: Writing out how the product will look and what it needs.
- Development: Develop an environment that works for all of us. i.e the linux instance we created implementing the design.
- Testing: Nothing goes to production without testing, The test must pass in order to go to the next stage, Beta versions can happen after testing to get feedback from the user.
- Staging: Its the holding area before the code gets deployed. The program is packaged and ready, just on hold till the release date. After staging the code is deployed.
  
### Github
-	One person reviewing is always the best.
-	Someone who is more knowledgeable should merge.
-	Git enter will tell you all the commands that can be performed on git
-	If you delete the .git file you need to reconnect to the github remote before pushing the code back to github.



-------------------------
# So what does DevOps actually mean? (Aricle)

- In a nutshell — DevOps/SRE is a culture that bridges the gap 
between development and IT operation teams.

## Docker?
- virtualization platform to containerise your app

- WHO USES it? Top companies like ING, Paypal, ADP, and Spotify 

- CICD with Docker enables you to build a container image

- BENEFITS? Separate non-dependent steps and run them in parallel

## CI — Continuous Integration and CD — Continuous Delivery and Deployment
 
- CI: Developers merge/commit code to master branch multiple times a day, fully automated build and test process.
  
<br />

![ci](https://user-images.githubusercontent.com/53493950/159931054-dd289e2c-9c2b-484b-9c61-b02b51e63429.png)

<br />
  
 - CD is an extension of continuous integration to make sure that you can release new changes to your customers quickly/sustainable way

<br />

![cd](https://user-images.githubusercontent.com/53493950/159931558-f1571a80-c309-4b5f-a389-2dc0dac35f72.png)

<br />
 
- Releasing software in minutes

- Advantages? Fault isolation is simpler and easier
  
<br />

#### CICD diagram

![cicd](https://user-images.githubusercontent.com/53493950/159957668-63322bbb-9af0-46b8-96c5-b2b673d2cf0a.png)

<br />

  
# S3
SIMPLE STORAGE SERVICE

- USED FOR  dISASTER RECOVERY PLAN TO BACK UP YOU DATA
- -COST EFFECTIVE
- uNLIKE OTHERS WE USE SQL
- PRICE INCREASES DEPENDING ON USE CASE(HOW DO YOU WANT TO USE THE SERVICE, SPEED)

# DOCKER AND CONTAINARISATION
  
### benefits

- globally available which makes it highly available

- ec2 instance
- install dependencies for s3
- AWSCLI - Phython 3 and above - running ec2
- AWS ACCESS &  secret keys
- 

# INTERVIEW PREP

- Passion
- Excietment
- Achievment

### Extra Notes

- Scrum the framework that is used to implement Agile methodology
  
- if the person taking notes stops taking notes, what you might say might not be important anymore

- Where do you see yourself in the future? talk about how are you planning to get there. Break it down in steps

- if you do not know how to respond to a interview question, then start with "My understanding of this is..."
  
## Finishing an important question

- Does that answer your question? would like me to go into more detail

  