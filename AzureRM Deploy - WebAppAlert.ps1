# Azure WebTest Deploy
$RGName = "AzureInsightsAlert002"
$Location = "Central US"


#Template Selection
$TemplateFile = <path to your template>
$TemplateParameterFile = <path to your parameter file>

# View current Azure PowerShell session context
Get-AzureRmContext
Login-AzureRmAccount

$AzureRMparams = @{hostingPlanName=$RGName; siteName=$RGName}	

New-AzureRmResourceGroup -Name $RGName -Location $Location

New-AzureRmResourceGroupDeployment -ResourceGroupName $RGName `
    -TemplateFile $TemplateFile -TemplateParameterObject $AzureRMparams
