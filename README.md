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