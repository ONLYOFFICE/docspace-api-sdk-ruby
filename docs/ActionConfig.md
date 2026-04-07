# DocspaceApiSdk::ActionConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **String** | The action data that will be scrolled to. | [optional] |
| **type** | **String** | The action type. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ActionConfig.new(
  data: section,
  type: scroll
)
```
