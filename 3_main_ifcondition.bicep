param deployStorage bool = true

module stg './storage.bicep' = if (deployStorage) {
  name: 'storageDeploy'
}