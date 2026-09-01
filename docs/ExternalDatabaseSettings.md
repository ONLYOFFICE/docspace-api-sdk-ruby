# DocspaceApiSdk::ExternalDatabaseSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **database_type** | **String** | The engine of the external database. | [optional] |
| **database_type_enum** | [**ExternalDatabaseType**](ExternalDatabaseType.md) | The engine of an external database. | [optional] |
| **db_host** | **String** | The host name or the IP address of the database server. | [optional] |
| **db_port** | **Integer** | The port the database server listens on. | [optional] |
| **db_name** | **String** | The name of the database to connect to. | [optional] |
| **db_user** | **String** | The user name to connect with. | [optional] |
| **db_password** | **String** | The password to connect with. | [optional] |
| **db_ssl** | **Boolean** | Specifies whether the connection to the database is secured with SSL. | [optional] |
| **sqlite_file_path** | **String** | The path to the database file, used by the SQLite engine only. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ExternalDatabaseSettings.new(
  database_type: mysql,
  database_type_enum: null,
  db_host: localhost,
  db_port: 3306,
  db_name: docspace,
  db_user: root,
  db_password: my-secret-password,
  db_ssl: false,
  sqlite_file_path: /var/lib/docspace/external.db
)
```
