# DocspaceApiSdk::WebhookTriggerDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The trigger name. | [optional] |
| **id** | **Integer** | The trigger bit value. | [optional] |
| **available** | **Boolean** | Specifies whether this trigger is available for the current user's role. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WebhookTriggerDto.new(
  name: file.created,
  id: 128,
  available: true
)
```
