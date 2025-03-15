# Managing_AWS_resources_using_GithubAction

Prerequisite: 
aws s3 bucket named: storing-terraform-state-file > to store state file
whenever we push changes in main.tf file it will trigger the github action which basically run below command automatically 
terraform init > terraform plan > terraform apply command 

