#Configure Alert Rule

# Azure RG Deploy
$RGName = <RG>
$Location = "Central US"
 
#Parameters
$Email = New-AzureRmAlertRuleEmail -CustomEmail you@domain.com
$Webhook = New-AzureRmAlertRuleWebhook -ServiceUri <webhook url>
 
# Create Alert Rule 
Add-AzureRmLogAlertRule -Name "Alert Stop" -Location $Location -ResourceGroup $RGName -OperationName microsoft.web/sites/stop/action -Status Succeeded -TargetResourceGroup $RGName -Actions $Email, $Webhook
 
# Get Alert Rule
Get-AzureRmAlertRule -ResourceGroup $RGName

