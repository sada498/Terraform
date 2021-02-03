# To start work with Azure you have to install azure CLI too.

 <details><summary>Windows</summary>
 <p>

* Open PowerShell and run the following command

        Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi
* [Download from Microsoft Azure ](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli)

 </p>
</details> 

  <details><summary>Mac </summary>
 <p> 

    brew update && brew install azure-cli
 
 </p>
 </details> 

 # Authenticate using the Azure CLI

    az login

* It will open Azure login page on browser for login credentials.
