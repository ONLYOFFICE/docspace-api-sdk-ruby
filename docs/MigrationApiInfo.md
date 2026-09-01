# DocspaceApiSdk::MigrationApiInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **migrator_name** | **String** | The migrator name. | [optional] |
| **operation** | **String** | The migration operation. | [optional] |
| **failed_archives** | **Array&lt;String&gt;** | The list of failed archives. | [optional] |
| **users** | [**Array&lt;MigratingApiUser&gt;**](MigratingApiUser.md) | The list of migrating users. | [optional] |
| **without_email_users** | [**Array&lt;MigratingApiUser&gt;**](MigratingApiUser.md) | The list of migrating users without email. | [optional] |
| **exist_users** | [**Array&lt;MigratingApiUser&gt;**](MigratingApiUser.md) | The list of existing migrating users. | [optional] |
| **groups** | [**Array&lt;MigratingApiGroup&gt;**](MigratingApiGroup.md) | The list of migrating groups. | [optional] |
| **import_personal_files** | **Boolean** | Specifies whether to import personal files or not. | [optional] |
| **import_shared_files** | **Boolean** | Specifies whether to import shared files or not. | [optional] |
| **import_shared_folders** | **Boolean** | Specifies whether to import shared folders or not. | [optional] |
| **import_common_files** | **Boolean** | Specifies whether to import common files or not. | [optional] |
| **import_project_files** | **Boolean** | Specifies whether to import project files or not. | [optional] |
| **import_groups** | **Boolean** | Specifies whether to import groups or not. | [optional] |
| **successed_users** | **Integer** | The number of successfully migrated users. | [optional] |
| **failed_users** | **Integer** | The number of unsuccessfully migrated users. | [optional] |
| **files** | **Array&lt;String&gt;** | The list of migrated files. | [optional] |
| **errors** | **Array&lt;String&gt;** | The list of migration errors. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MigrationApiInfo.new(
  migrator_name: Nextcloud,
  operation: parse,
  failed_archives: [archive1.zip, archive2.zip],
  users: null,
  without_email_users: null,
  exist_users: null,
  groups: null,
  import_personal_files: true,
  import_shared_files: true,
  import_shared_folders: true,
  import_common_files: true,
  import_project_files: false,
  import_groups: true,
  successed_users: 50,
  failed_users: 2,
  files: [document.docx, spreadsheet.xlsx],
  errors: [User not found, File access denied]
)
```
