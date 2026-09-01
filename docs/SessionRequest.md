# DocspaceApiSdk::SessionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_name** | **String** | The file name. |  |
| **file_size** | **Integer** | The file size. | [optional] |
| **relative_path** | **String** | The relative path to the file. | [optional] |
| **create_on** | **Time** | The date and time when the file was created. | [optional] |
| **encrypted** | **Boolean** | Specifies whether the file is encrypted or not. | [optional] |
| **create_new_if_exist** | **Boolean** | Specifies whether to create a new file if it already exists. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SessionRequest.new(
  file_name: My Document.docx,
  file_size: 10485760,
  relative_path: subfolder/documents,
  create_on: 2025-01-01T00:00:00Z,
  encrypted: false,
  create_new_if_exist: true
)
```
