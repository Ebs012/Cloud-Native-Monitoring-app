import boto3
aws_region = 'us-east-1'
ecr_client = boto3.client('ecr', region_name=aws_region)
repository_name = "ebs_monitoring_app_image"
response = ecr_client.create_repository(repositoryName=repository_name)

repository_uri = response ['repository']['repositoryUri']
print(repository_uri)