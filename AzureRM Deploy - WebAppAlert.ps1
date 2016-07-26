# Azure WebTest Deploy
$RGName = "AzureInsightsAlert002"
$Location = "Central US"


#Template Selection
$TemplateFile = "C:\Users\rasmush\Work Folders\Conference\TR23\AZR310 - Deep-Dive with Azure Insights\WebSite.json"
$TemplateParameterFile = "C:\Users\rasmush\Work Folders\Conference\TR23\AI\WebTest.parameters.json"

# View current Azure PowerShell session context
Get-AzureRmContext
Login-AzureRmAccount -TenantId 76e5b891-f93f-43f4-ad6d-6723347d5253

$AzureRMparams = @{hostingPlanName=$RGName; siteName=$RGName}	

New-AzureRmResourceGroup -Name $RGName -Location $Location

New-AzureRmResourceGroupDeployment -ResourceGroupName $RGName `
    -TemplateFile $TemplateFile -TemplateParameterObject $AzureRMparams
