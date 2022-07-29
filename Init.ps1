Connect-AzAccount
Get-AzSubscription

$context = Get-AzSubscription -SubscriptionId <SubscriptionId>
Set-AzContext $context


Set-AzDefault -ResourceGroupName <ResourceGroupName>
