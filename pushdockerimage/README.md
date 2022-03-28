## What this does?
This repo demonstrates how to create Jenkinsfile to build and push a docker image, tagged with custom build number or latest

## Jenkins setup
Jenkins is installed on EC2. Follow the instructions on https://www.jenkins.io/doc/tutorials/tutorial-for-installing-jenkins-on-AWS/ . You can skip "Configure a Cloud" part for this demo. Please note some commands from this link might give errors, below are the workarounds:

1. If you get daemonize error while running the command `sudo yum install jenkins java-1.8.0-openjdk-devel -y` then , run the commands from the answer of https://stackoverflow.com/questions/68806741/how-to-fix-yum-update-of-jenkins

2. Install Docker on the EC2 after Jenkins is installed by following the instructions on https://serverfault.com/questions/836198/how-to-install-docker-on-aws-ec2-instance-with-ami-ce-ee-update

3. Run `sudo chmod 666 /var/run/docker.sock` on the EC2 after Docker is installed.

4. Install Git on the EC2 by running `sudo yum install git`

### Jenkins plugins

Install the following plugins for the demo.
- Amazon EC2 plugin (No need to set up Configure Cloud after)
- Docker plugin  
- Docker Pipeline
- GitHub Integration Plugin

## How to run!
Follow along with my Udemy DevOps course lectures to understand how it works, detailed setup instructions, with step by step demo. My highest rated, discounted Udemy courses link on www.cloudwithraj.com
