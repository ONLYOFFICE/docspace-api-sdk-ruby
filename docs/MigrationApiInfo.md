# DocspaceApiSdk::MigrationApiInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **migrator_name** | **String** |  | [optional] |
| **operation** | **String** |  | [optional] |
| **failed_archives** | **Array&lt;String&gt;** |  | [optional] |
| **users** | [**Array&lt;MigratingApiUser&gt;**](MigratingApiUser.md) |  | [optional] |
| **without_email_users** | [**Array&lt;MigratingApiUser&gt;**](MigratingApiUser.md) |  | [optional] |
| **exist_users** | [**Array&lt;MigratingApiUser&gt;**](MigratingApiUser.md) |  | [optional] |
| **groups** | [**Array&lt;MigratingApiGroup&gt;**](MigratingApiGroup.md) |  | [optional] |
| **import_personal_files** | **Boolean** |  | [optional] |
| **import_shared_files** | **Boolean** |  | [optional] |
| **import_shared_folders** | **Boolean** |  | [optional] |
| **import_common_files** | **Boolean** |  | [optional] |
| **import_project_files** | **Boolean** |  | [optional] |
| **import_groups** | **Boolean** |  | [optional] |
| **successed_users** | **Integer** |  | [optional] |
| **failed_users** | **Integer** |  | [optional] |
| **files** | **Array&lt;String&gt;** |  | [optional] |
| **errors** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MigrationApiInfo.new(
  migrator_name: null,
  operation: null,
  failed_archives: null,
  users: null,
  without_email_users: null,
  exist_users: null,
  groups: null,
  import_personal_files: null,
  import_shared_files: null,
  import_shared_folders: null,
  import_common_files: null,
  import_project_files: null,
  import_groups: null,
  successed_users: null,
  failed_users: null,
  files: null,
  errors: null
)
```
