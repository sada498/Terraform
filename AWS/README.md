# To configure the aws credentials 

[AWS CLI](https://aws.amazon.com/cli/)

> Download the AWS CLI depending on your Operating System.

    aws configure
**Enter** 
* *aws_access_key_id* 
* *aws_secret_access_key*


## 1. Windows manual 
    %UserProfile%\.aws\credentials

**edit** *credentials file* 

    [default]
    aws_access_key_id = 
    aws_secret_access_key =

## 2. MacOS and Linux

    ~/.aws/credentials


<details><summary>small instance</summary>
<p>

## 1. To start the terraform Initializaton.

    terraform init

## 2. Terraform recommend using consistent formatting in files and modules written by different teams.

    terraform fmt
    
## 3. Terraform also recommend validate your configuration.

    terraform validate

 **If your configuration correct. you would get output like.** 
 *Success! The configuration is valid.*
# To creaate infrastructure 
> Note: make sure you are in same directory file created 

    terraform apply

> Check the your infrastructure before enter **yes**.
# Inspect state
**Once the terraform configuration finished. It is wrote data into a file called** *terraform.tfstate*

## 1. To check current state of your config.

    terraform show

![alt](https://github.com/sada498/Terraform/blob/main/AWS/img/terraformshow.JPG)
# Manually Managing State

## 1. To check the list of resources in state.

    terraform state list

# Test 

## 1. AWS console check

![alt](https://github.com/sada498/Terraform/blob/main/AWS/img/awsconsole.JPG)


# Destroy the Terraform configuration

    terraform destroy


</p>
</details>
<details><summary>aws_vpc-2_instance-dns-s3</summary>
<p>
    
</p>
</details>
<details><summary>aws_vpc-4_instance-dns-s3</summary>
<p>
    
</p>
</details>

