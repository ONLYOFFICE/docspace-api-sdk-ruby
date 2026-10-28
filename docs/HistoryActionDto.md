# DocspaceApiSdk::HistoryActionDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**MessageAction**](MessageAction.md) | The action performed on the file. | [optional] |
| **key** | **String** | The same action as a camel-case key, for a client to look up its own wording by. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::HistoryActionDto.new(
  id: null,
  key: fileUploaded
)
```
