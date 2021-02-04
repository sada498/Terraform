# Getting started with GCP

## 1. setting up google cloud for Terraform to provision your infrastructure.

* Create a new project in GCP console. 

  *Project Id* requried for provision gcp.

* Enable the **Google compute engine** for the project.

* Create a **GCP service account key** 

> If you already login your account in browser click here to [Create Service Account Key](https://console.cloud.google.com/apis/credentials/serviceaccountkey)

* 1. Create service account key.
* 2. For role choose *Project -> Editor*
![alt](https://github.com/sada498/Terraform/blob/main/GCP/img/service%20account%20details.JPG)

<details><summary>gcp-network</summary>
<p>

## 1. add the your path *.jason* key to cedentials in **provider**

## 2.Initialize the Terraform

    terraform init

## 3. you can validate your configuration 

    teraform validate

## 4. Apply the gcp infrastructure

    terraform apply

> all the configuration as expected youm can enter yes to build your infrastructure

## 5. check the infrastructure

    terraform show

![alt](https://github.com/sada498/Terraform/blob/main/GCP/img/gcpnetworkresult.JPG)

</p>
</details>

<details><summary>gcp-instance</summary>
<p>

# Configure the  

## 1.Initialize the Terraform

    terraform init

## 2. you can validate your configuration 

    teraform validate

## 3. Apply the gcp infrastructure

    terraform apply

> all the configuration as expected youm can enter yes to build your infrastructure

## 4. check the infrastructure

    terraform show

![](https://github.com/sada498/Terraform/blob/main/GCP/img/gcpinstance.JPG)

**you try to uncomment for the image for instance to checkthe redeploy the gcp infrastructure**

    boot_disk {
    initialize_params {
    
    # image = "debian-cloud/debian-9"
    image = "cos-cloud/cos-stable"
        }
    }

</p>
</details>