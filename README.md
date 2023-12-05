# Task
As DevOps junior engineer you have a task from your team lead to create python and shell scripts which will retrieve global variables in Linux system and store them in /opt/output.txt file

Value of variable: variable name

region name: region
AZ name: az-code
public\private IP address: privateip\publicip
name of instance: instance-name
instance ID: instance-id
account number: account-number

Both scripts should be executable and stored in /opt/ directory. During code review, we will run it, check the output and global variables.

IMDSv2 method should be used to retrieve ec2 data for bash script.

# Instructions
# install python in EC2 instance:
$ sudo apt install python3.8

# in /opt directory create and write .py script which will define global variables and store them in /opt/output.txt file as per task instruction, that can be done with below commands:

$ cd /opt
$ touch get_global_variables.py
- FOR-loop is used for storing
- os module was used to manage environment variables


# in /opt directory create and write .sh script which will retrieve AWS instance metadata using IMDSv2 method and write the variables and their values to the output file as per task instruction
$ touch get_global_variables.sh
- The IMDSv2 token is used for authenticating requests to the AWS Instance Metadata Service.

# change both script modes to executable:
$ chmod +x get_global_variables.py
$ chmod +x get_global_variables.sh

# run both scripts:
$ sudo ./get_global_variables.py
$ sudo ./get_global_variables.sh
