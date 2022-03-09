# Elk-Stack-Project
Cloud Monitoring using an ELK stack server
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.


![Network Diagram](https://github.com/tobiaseks/Elk-Stack-Project/blob/54f1088bd8da4b0482ffe4f86811dffb37f7e0be/Diagrams/Elk_Stack_Visualization.JPG)


These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

The playbook file is /etc/ansible/install-elk.yml

This document contains the following details:
Description of the Topology
Access Policies
ELK Configuration
Beats in Use
 Machines Being Monitored
How to Use the Ansible Build

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the Damn Vulnerable Web Application.

Load balancing ensures that the application will be highly protected, in addition to restricting traffic to the network.

What aspect of security do load balancers protect? 
Answer: Load balancers protect the system from potential DDoS attacks by redirecting attack traffic away from the system. 

What is the advantage of a jump box?
Answer: The jump box's main advantage is that it gives the user access from a system to the server that can be secure and monitored.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.

What does Filebeat watch for? 
Answer: Filebeat monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing.

What does Metricbeat record? 
Answer: Metricbeat takes the metrics and statistics that it collects and ships them to the output that you specify, such as Elasticsearch or Logstash. Metricbeat helps you monitor your servers by collecting metrics from the system and services running on the server, such as Apache

The configuration details of each machine may be found below.



### Access Policies

The machines on the internal network are not exposed to the public Internet.

Only the Elk Server machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: Home computer Public IP address through TCP 5601

Machines within the network can only be accessed by Home Computer and Jump-Box-Provisioner


Which machine did you allow to access your ELK VM? What was its IP address?
Answer: Jump-Box-Provisioner 10.3.0.4 via SSH port 22
    Home Computer Public IP address via TCP port 5601

A summary of the access policies in place can be found in the table below.



### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because you can run multiple commands, apps and servers from a specific playbook. 


Specify the group of machines as well as the remote user


Increase Memory


Install the following services
docker.io
python3-pip
docker (docker pip module)


Downloading and launching the container with ports


The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.





### Target Machines & Beats
This ELK server is configured to monitor the following machines:
Web1: 10.3.0.5
Web2: 10.3.0.6

We have installed the following Beats on these machines:
Elk Server, Web1 and Web2
The Elk stack successfully installed are FileBeat and MetricBeat

These Beats allow us to collect the following information from each machine:
Filebeat: logs events and collects informations on changes that occur
Metricbeat: gathers data on metrics and statistics

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 
SSH into the control node and follow the steps below 
Copy the /etc/ansible/filebeat-configuration.yml file to /etc/ansible/file directory
Update the /etc/ansible/hosts to add the webserver or elkserver ip addresses
And then navigate to the (publicipaddress):5601  which will lead you to the Kibana home page.

