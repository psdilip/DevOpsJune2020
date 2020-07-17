# EC2 User Data Scripts

Copy and paste the content of each of these scripts to the EC2 user data section before you provision the instance. User Data is a section inside your EC2 which allows you to put in commands as plain text so you can automate tasks. Commands inside each script will automate the process of deploying the respective application.

## Getting Started
1. In your AWS Console, open EC2 service
2. Click on Launch Instance
3. Select RedHat AMI
4. Choose a recommended EC2 instance type inside each script, click Next
5. Under Advanced Details, paste the contents of the script given in this repository, click Next
6. In Tags, click Next
7. In Security Group, configure rules defined in the script
8. Click Review and Launch
9. Click Launch
10. Either use exiting key-pair or create a new one
11. Click on Launch Instance
12. Get some soda and wait
13. Access your server application *http://{application-dns-name}:{port-number}*

```

## Authors

* *Sai Dilip Ponnaganti*

## Acknowledgments

* DevOps Class Team Members