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


## INTERVIEW PREP

- Passion
- Excietment
- Achievment

### Extra Notes
- Scrum the framework that is used to implement Agile methodology
if the person taking notes stops taking notes, what you might say might not be important anymore

- Where do you see yourself in the future? talk about how are you planning to get there. Break it down in steps

- if you do not know how to respond to a interview question, then start with "My understanding of this is..."

  