param accountName string

param databaseNames array {
  // default: ["name1" "name2"]
}

resource[] sqlDatabases 'Microsoft.DocumentDB/databaseAccounts/sqlDatabases@2020-06-01-preview' = {
  for databaseName in databaseNames: {
    name: '{accountName}/{databaseName}'
    properties:{
      resources: {
        id: databaseName
      }
      options: {
        
      }
    }
  }
}

output sqlDatabases array = [
  for da
]
