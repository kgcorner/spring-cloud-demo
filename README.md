# spring-cloud-demo
Demonstrate micro service architecture implemented using Spring cloud.

There are 6 services in this demo, serving different contents
1. config-server: serves configuration to all services
2. discovery-server: discovery server implemented using netflix-eureka
3. user-service: serves users details
4. photo-service: serves photo details
5. comment-service: serves photo details
6. gateway: Gateway service which provides api's end points and collects content from required services to serves to users

### What is Config Server
In cloud environment configuration can be kept centralized. Spring cloud provides config-server which can fetch configuration from version control systems like git or svn and from file system as well. In this demo directory configserver contains config-server which is configured to use this git repository for storing config files. all config files are kept in config folder.

### what is discovery-service
Discovery service is responsible for registering and providing 
  1. Location of different services
  2. Status of different services, whether they are running or is down
In this demo directory discoveryserver contains discovery-service which is implemented using Netflix's Eureka. Spring boot makes it super easy to implement it using `spring-cloud-starter-netflix-eureka-server`.

MySql has been used as database for storing and fetching data. use all.sql file to populate databases. 
There are three databases:
1. User: contains users data
2. Photos: contains photo's data
3. Comments: contains comment's data

All services uses common module `data` and `dao` for connecting and fetching data from database. 

### How to run
First of all build the project using maven from the root of the project. Run below command
`maven clean install -DskipTests`

Note: By default spring plugin runs the tests as i have added dependencies. Tests will be added later on, so for now skip tests

Run services in below sequence
1. Discovery server from discoveryserver directory using command `mvn spring-boot:run`
2. Config server from configserver directory using command `mvn spring-boot:run`
3. Now you can run rest services from their respective directories using command `mvn spring-boot:run`

### Collecting traces using zipkin
This demo is configured to extract trace information using zipkin. Spring cloud provide a utility named `slueth` which exports trace information from your service to zipkin which shows the time taken to communicate between different services

Download zipkin from https://search.maven.org/remote_content?g=io.zipkin.java&a=zipkin-server&v=LATEST&c=exec and run using command `java -jar zipkin-server-<version>-exec.jar` (replace version or correct jar file name)

Now open Eureka service from url http://localhost:8761/ This should show all registered services 
Access user's detail from url http://localhost:8080/users. This should return a list of users

Access trace logs from zipkin http://localhost:9411
