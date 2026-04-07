# DocspaceApiSdk::HistoryAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**MessageAction**](MessageAction.md) |  | [optional] |
| **key** | **String** | The action performed on the file. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::HistoryAction.new(
  id: null,
  key: fileUploaded
)
```
