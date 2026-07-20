# DocspaceApiSdk::InfoConfigDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **favorite** | **Boolean** | Specifies if the file is favorite or not. | [optional] |
| **folder** | **String** | The folder of the file. | [optional] |
| **owner** | **String** | The file owner. | [optional] |
| **sharing_settings** | [**Array&lt;AceShortWrapper&gt;**](AceShortWrapper.md) | The sharing settings of the file. | [optional] |
| **type** | [**EditorType**](EditorType.md) |  | [optional] |
| **uploaded** | **String** | The uploaded file. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::InfoConfigDto.new(
  favorite: false,
  folder: My Documents,
  owner: John Doe,
  sharing_settings: [],
  type: null,
  uploaded: 2025-01-01T00:00:00
)
```
