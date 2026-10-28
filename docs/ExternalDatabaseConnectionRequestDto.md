# DocspaceApiSdk::ExternalDatabaseConnectionRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **database_type** | **String** | The engine of the external database: `mysql`, or `sqlite` on a Standalone installation. | [optional] |
| **database_type_enum** | [**ExternalDatabaseType**](ExternalDatabaseType.md) | The engine named by `databaseType`, as the server reads it. A value sent here is ignored. | [optional] |
| **db_host** | **String** | The host name or the IP address of the database server. | [optional] |
| **db_port** | **Integer** | The port the database server listens on. | [optional] |
| **db_name** | **String** | The name of the database to connect to. | [optional] |
| **db_user** | **String** | The user name to connect with. | [optional] |
| **db_password** | **String** | The password to connect with. | [optional] |
| **db_ssl** | **Boolean** | Whether the connection is secured with SSL. | [optional] |
| **sqlite_file_path** | **String** | The path to the database file, used by the SQLite engine only. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ExternalDatabaseConnectionRequestDto.new(
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
