# DocspaceApiSdk::FileShareDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access** | [**FileShare**](FileShare.md) | The access rights type. | [optional] |
| **shared_to** | **Object** |  | [optional] |
| **shared_to_user** | [**EmployeeFullDto**](EmployeeFullDto.md) | The user who has the access to the specified file. | [optional] |
| **shared_to_group** | [**GroupSummaryDto**](GroupSummaryDto.md) | The user who has the access to the specified file. | [optional] |
| **shared_link** | [**FileShareLink**](FileShareLink.md) | The user who has the access to the specified file. | [optional] |
| **is_locked** | **Boolean** | Specifies if the access right is locked or not. |  |
| **is_owner** | **Boolean** | Specifies if the user is an owner of the specified file or not. |  |
| **can_edit_access** | **Boolean** | Specifies if the user can edit the access to the specified file or not. |  |
| **can_edit_internal** | **Boolean** | Indicates whether internal editing permissions are granted. |  |
| **can_edit_deny_download** | **Boolean** | Determines whether the user has permission to modify the deny download setting for the file share. |  |
| **can_edit_expiration_date** | **Boolean** | Indicates whether the expiration date of access permissions can be edited. |  |
| **can_revoke** | **Boolean** | Specifies whether the file sharing access can be revoked by the current user. |  |
| **subject_type** | [**SubjectType**](SubjectType.md) | The subject type. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileShareDto.new(
  access: null,
  shared_to: null,
  shared_to_user: null,
  shared_to_group: null,
  shared_link: null,
  is_locked: false,
  is_owner: false,
  can_edit_access: true,
  can_edit_internal: true,
  can_edit_deny_download: true,
  can_edit_expiration_date: true,
  can_revoke: true,
  subject_type: null
)
```
