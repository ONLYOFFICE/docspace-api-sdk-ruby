# DocspaceApiSdk::ExternalDatabaseSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **database_type** | **String** |  | [optional] |
| **database_type_enum** | [**ExternalDatabaseType**](ExternalDatabaseType.md) |  | [optional] |
| **db_host** | **String** |  | [optional] |
| **db_port** | **Integer** |  | [optional] |
| **db_name** | **String** |  | [optional] |
| **db_user** | **String** |  | [optional] |
| **db_password** | **String** |  | [optional] |
| **db_ssl** | **Boolean** |  | [optional] |
| **sqlite_file_path** | **String** |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ExternalDatabaseSettings.new(
  database_type: null,
  database_type_enum: null,
  db_host: null,
  db_port: null,
  db_name: null,
  db_user: null,
  db_password: null,
  db_ssl: null,
  sqlite_file_path: null
)
```
