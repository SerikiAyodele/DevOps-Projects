import boto3

# Create an S3 resource object
s3 = boto3.resource('s3')

# List and print the names of all S3 buckets
for bucket in s3.buckets.all():
    print(bucket.name)
