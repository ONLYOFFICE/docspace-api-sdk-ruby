# DocspaceApiSdk::CopyAsJsonElement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dest_title** | **String** | The title of the copy, extension included. That extension decides the format: the same one as the source  copies the content as it is, a different one has it converted first. |  |
| **dest_folder_id** | [**CopyAsJsonElementDestFolderId**](CopyAsJsonElementDestFolderId.md) |  |  |
| **enable_external_ext** | **Boolean** | Whether the extension of the new title may be one the portal does not edit itself. | [optional] |
| **password** | **String** | The password that opens the source document, for a file that is protected by one. | [optional] |
| **to_form** | **Boolean** | Whether the copy is to become a PDF form rather than a plain document, which the conversion supports for the  text formats it can read. | [optional] |

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
