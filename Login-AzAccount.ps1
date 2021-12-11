connect-AzAccount
$subscriptionId = 'xxx'
Set-AzContext -Subscription $subscriptionId

$rgname = 'test-rg-01'

New-AzResourceGroup -Name $rgname "WestEurope"

New-AzResourceGroupDeployment -ResourceGroupName $rgname -TemplateFile ./test-deploy.bicep
