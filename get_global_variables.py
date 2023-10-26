import os

variables = {
    "region name": os.environ.get("AWS_DEFAULT_REGION", "N/A"),
    "AZ name": os.environ.get("AWS_AVAILABILITY_ZONE", "N/A"),
    "public IP address": os.environ.get("PUBLIC_IP", "N/A"),
    "private IP address": os.environ.get("PRIVATE_IP", "N/A"),
    "name of instance": os.environ.get("AWS_INSTANCE_ID", "N/A"),
    "instance ID": os.environ.get("AWS_INSTANCE_ID", "N/A"),
    "account number": os.environ.get("AWS_ACCOUNT_ID", "N/A"),
}

output_file = "/opt/output.txt"
with open(output_file, "w") as file:
    for variable, value in variables.items():
        file.write(f"{value}: {variable}\n")