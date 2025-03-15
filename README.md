# Managing_AWS_resources_using_GithubAction

Prerequisite: 
aws s3 bucket named: storing-terraform-state-file > to store state file
whenever we push any changes in main.tf or even readme file it will trigger the github action which basically run below command automatically 
terraform init > terraform plan > terraform apply command 

Aws access key and secret key stored in secret

There is a comment in main.tf file so we need to remove those comment to create the EC2 instances.

