#Configure Alert Rule
 
#Parameters
$Email = New-AzureRmAlertRuleEmail -CustomEmail rasmush@microsoft.com
$Webhook = New-AzureRmAlertRuleWebhook -ServiceUri https://s2events.azure-automation.net/webhooks?token=GSinbmPPJBWt1NvaYrvrEsBLLXGQ9gbMMHMJFq0fhho%3d
 
# Create Alert Rule 
Add-AzureRmLogAlertRule -Name "Alert Stop" -Location "North Europe" -ResourceGroup AzureInsights_Demo002 -OperationName microsoft.web/sites/stop/action -Status Succeeded -TargetResourceGroup AzureInsights_Demo002 -Actions $Email, $Webhook
 
# Get Alert Rule
Get-AzureRmAlertRule -ResourceGroup AzureInsights_Demo002 

#---More---#

#Get Metric Definitions
Get-AzureRmMetricDefinition -ResourceId /subscriptions/a64cb62c-cf2d-4f05-8c5b-257cdbc05bad/resourcegroups/AzureInsights_Demo002/providers/Microsoft.Web/sites/webSitegnwfqqbicki32 

#Get active rules
Get-AzureRmAlertRule -ResourceGroup AzureInsights_Demo002 -TargetResourceId /subscriptions/a64cb62c-cf2d-4f05-8c5b-257cdbc05bad/resourcegroups/AzureInsights_Demo002/providers/Microsoft.Web/sites/webSitegnwfqqbicki32
