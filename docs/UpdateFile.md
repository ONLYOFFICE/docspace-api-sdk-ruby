# DocspaceApiSdk::UpdateFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The file title to update. | [optional] |
| **last_version** | **Integer** | The number of the latest file version. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateFile.new(
  title: My Document,
  last_version: 1
)
```
