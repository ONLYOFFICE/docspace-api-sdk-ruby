# DocspaceApiSdk::ActionLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | [**ActionLinkActionRequest**](ActionLinkActionRequest.md) | The anchor itself. It is passed on to the editor unchanged, so it has to be the value the editor produced for  the comment or the mention it points at. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ActionLinkRequest.new(
  action: null
)
```
