# DocspaceApiSdk::ActionLinkConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | [**ActionConfig**](ActionConfig.md) | The anchor itself. It is passed on to the editor unchanged, so it has to be the value the editor produced for  the comment or the mention it points at. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ActionLinkConfig.new(
  action: null
)
```
