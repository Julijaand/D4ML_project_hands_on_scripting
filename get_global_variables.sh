#!/bin/bash

# Retrieve AWS instance metadata using IMDSv2
region=$(curl -s -H "X-aws-ec2-metadata-token: REPLACE_WITH_YOUR_IMDSv2_TOKEN" http://169.254.169.254/latest/meta-data/placement/region)
az=$(curl -s -H "X-aws-ec2-metadata-token: REPLACE_WITH_YOUR_IMDSv2_TOKEN" http://169.254.169.254/latest/meta-data/placement/availability-zone)
public_ip=$(curl -s -H "X-aws-ec2-metadata-token: REPLACE_WITH_YOUR_IMDSv2_TOKEN" http://169.254.169.254/latest/meta-data/public-ipv4)
private_ip=$(curl -s -H "X-aws-ec2-metadata-token: REPLACE_WITH_YOUR_IMDSv2_TOKEN" http://169.254.169.254/latest/meta-data/local-ipv4)
instance_id=$(curl -s -H "X-aws-ec2-metadata-token: REPLACE_WITH_YOUR_IMDSv2_TOKEN" http://169.254.169.254/latest/meta-data/instance-id)
account_number=$(curl -s -H "X-aws-ec2-metadata-token: REPLACE_WITH_YOUR_IMDSv2_TOKEN" http://169.254.169.254/latest/meta-data/identity-credentials/ec2/info | jq -r .AccountId)

# Write the variables and their values to the output file
output_file="/opt/output.txt"
echo "region name: $region" > "$output_file"
echo "AZ name: $az" >> "$output_file"
echo "public IP address: $public_ip" >> "$output_file"
echo "private IP address: $private_ip" >> "$output_file"
echo "name of instance: $instance_id" >> "$output_file"
echo "instance ID: $instance_id" >> "$output_file"
echo "account number: $account_number" >> "$output_file"

