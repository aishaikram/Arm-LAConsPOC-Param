$templateFile = "azuredeploy.json"
$parameterFile="azuredeploy.parameters.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="LAConsPOCdeployment-"+"$today"
#this will only check the status of resources to be modified if we proceed with this deployment
#no actual deployment
<# only show the resources to be modified- 
use FullResourcePayloads instead of ResourceIdOnly for full schema #>
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile `
  -TemplateParameterFile $parameterFile `
  -WhatIf `
  -WhatIfResultFormat ResourceIdOnly 