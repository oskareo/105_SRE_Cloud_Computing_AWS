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
- flexibility
- Robustness
- Cost

## Amazon Web Services(AWS)

Amazon Web Services (AWS) is a subsidiary of Amazon providing on-demand cloud computing platforms and APIs to individuals, companies, and governments, on a metered pay-as-you-go basis. These cloud computing web services provide a variety of basic abstract technical infrastructure and distributed computing building blocks and tools.

![AWS](https://s3-us-west-1.amazonaws.com/corpinfowebsiteuploads/content/uploads/2016/04/25051531/AWS-Global-Infrastructure.jpg)



## REGION VS AVAILABILITY ZONE

- Region is a physical location around the world where we cluster data centers. We call each group of logical data centers an Availability Zone. Each AWS Region consists of multiple, isolated, and physically separate AZs within a geographic area. 

- AZs give customers the ability to operate production applications and databases that are more highly available, fault tolerant, and scalable than would be possible from a single data center.

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


User journey has to be satisfactory

- 1. Creating github repo to push markdown docu
- 2.  Amazon Web Services (AWS)





For each region there are et least 2 multiple availability zones