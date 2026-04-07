# DocspaceApiSdk::CopyAsJsonElement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dest_title** | **String** | The copied file name. |  |
| **dest_folder_id** | [**CopyAsJsonElementDestFolderId**](CopyAsJsonElementDestFolderId.md) |  |  |
| **enable_external_ext** | **Boolean** | Specifies whether to allow creating the copied file of an external extension or not. | [optional] |
| **password** | **String** | The copied file password. | [optional] |
| **to_form** | **Boolean** | Specifies whether to convert the file to form or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CopyAsJsonElement.new(
  dest_title: Document Copy.docx,
  dest_folder_id: null,
  enable_external_ext: false,
  password: password123,
  to_form: false
)
```
