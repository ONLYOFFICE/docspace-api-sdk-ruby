# DocspaceApiSdk::RunBuilderScriptOutputRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The id of a portal file to store the result in as a new version, as reported by a folder listing such as  `GET api/2.0/files/{folderId}`. | [optional] |
| **folder_id** | **Integer** | The id of a folder to save the result in as a new file, as reported by a folder listing such as  `GET api/2.0/files/{folderId}`. | [optional] |
| **title** | **String** | The title of the new file, when it has to differ from the name the script saved the result under. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RunBuilderScriptOutputRequest.new(
  file_id: 1234,
  folder_id: 5678,
  title: Quarterly report.pdf
)
```
