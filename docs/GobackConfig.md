# DocspaceApiSdk::GobackConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Where the user is taken when they leave the document, normally the folder or the room it lies in. It is empty  when there is nowhere to return to, as in a framed opening. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::GobackConfig.new(
  url: https://portal.example.com/rooms/shared/42
)
```
