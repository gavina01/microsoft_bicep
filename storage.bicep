param location string = 'eastus'
param namePrefix string = 'uniquestorage001' // must be globally unique

var storageName = 'secretStorage'
var storageSku = 'Standard_LRS' // declare variable and assign value

resource stg 'Microsoft.Storage/storageAccounts@2019-06-01' = {
    name: '${namePrefix}${storageName}'
    location: location
    kind: 'Storage'
    sku: {
        name: storageSku // reference variable
    }
}

output storageId string = stg.id // output resourceId of storage account