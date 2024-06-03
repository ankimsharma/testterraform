Exucute the following for the setup 
login to azure account
az login
get subscription ID
az account list -o table

az account set --subscription <Subscription_Id>

create a terraform project directory 
mkdir terraform_test
clone the project from repo
git clone https://github.com/ankimsharma/testterraform.git 
