# DocspaceApiSdk::UploadSessionResponseDtoInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The upload session ID. | [optional] |
| **folder_id** | **Integer** | The folder ID where the file is being uploaded. | [optional] |
| **version** | **Integer** | The file version number. | [optional] |
| **title** | **String** | The file title. | [optional] |
| **provider_key** | **String** | The third-party provider key. | [optional] |
| **uploaded** | **Boolean** | Specifies whether the file has been uploaded. | [optional] |
| **file** | [**FileDtoInteger**](FileDtoInteger.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UploadSessionResponseDtoInteger.new(
  id: 1,
  folder_id: 1,
  version: 1,
  title: My Document.docx,
  provider_key: Google,
  uploaded: false,
  file: null
)
```
