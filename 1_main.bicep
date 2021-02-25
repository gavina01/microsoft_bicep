param location string {
  secure: false
  default: 'australiaeast'
  allowed: [
    'australiaeast'
    'eastus'
    'westus'
  ]
}

param storageName string = 'unqiuestoragename'

var storageSku = 'Standard_LRS'


param serverFarmId string = resourceId('Microsft.Web.sites','mywebsite')
var namePrefix = 'trial'
var storageaccountName = '${namePrefix}${uniqueString(resourceGroup().id)}'

param globalRedundancy bool = true

var tenary = globalRedundancy ? true : false

resource stg  'Microsoft.Storage/storageAccounts@2020-08-01-preview' = {
  name: storageaccountName
  location: location
  kind: 'Storage'
  sku: {
    name:storageSku
  }
  properties: {
  }
} 

resource blob 'Microsoft.Storage/storageAccounts/blobServices/containers@2020-08-01-preview' = {
  name: '${stg.name}/default.logs'
}

output storageId string = stg.id //[resourceID('microsoft.storage')]
output storageOutputName string = stg.name //[resourceID('microsoft.storage')]
output storageOutputEndpointName string = stg.properties.primaryEndpoints.blob //[reference(variables('storage',.properties.primary.Endpoints))]
