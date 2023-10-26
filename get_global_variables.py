#!/usr/bin/env python3.8

import os

variables = {
    "region name": os.environ.get("AWS_DEFAULT_REGION"),
    "AZ name": os.environ.get("AWS_AVAILABILITY_ZONE"),
    "public IP address": os.environ.get("PUBLIC_IP"),
    "private IP address": os.environ.get("PRIVATE_IP"),
    "name of instance": os.environ.get("AWS_INSTANCE_ID"),
    "instance ID": os.environ.get("AWS_INSTANCE_ID"),
    "account number": os.environ.get("AWS_ACCOUNT_ID"),
}

output_file = "/opt/output.txt"
with open(output_file, "w") as file:
    for variable, value in variables.items():
        file.write(f"{value}: {variable}\n")